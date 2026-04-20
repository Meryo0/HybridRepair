% NPE Fault Localization Benchmark.
%
% fixed(BugId, [(Range, Line, faulty|fixed), ...]).
% range/5: range(ClassId, StartPos, Length, StartLine, EndLine).
% line/2: line(ClassId, LineNum).
% faulty|fixed: faulty - the line is a faulty location / fixed - the line was fixed in a patch.
% range/5 shows the exact cause - expressions, variables, literals, etc. - with source code range, 
% and line/2 simply provides line numbers of fault locations.
%
% For bugs with multiple solutions - lang_npe_2, d4j_csv_4 - checking multiple solutions for verify/4 is necessary.
%
% To retrieve faulty locations - lines only - for a speicifc BugId,
% ?- fault_locs(BugId, Locs).
% 
% To retrieve causes - specific code ranges - for a speicifc BugId,
% ?- fault_causes(BugId, Causes).
% 
% Then you can verify your Candidates with the retrieved locations / causes with the following query.
% ?- your_predicate(Candidates), fault_locs(BugId, Locs), verify(Candidates, Locs, Matched, Result).
% 
% The Result of verify/4 will be 
% 	matched (all locations are found in Candidates), 
% 	partially_matched (a part of the locations are found in Candidates), 
% 	not_matched (none of the locations are found in Candidates), 
% 	not_available (there is no fault locations - either no BugId or no locs with 'faulty' flag - for the given BugId).
% 	
% Matched will contain a list of candidates which matched to the fault locations.
% 
% your_predicate(Candidates) is a predicate to list up Candidates. 
% Each item in Candidates should be of the form (CodeId, line(ClassId, LineNum)) if you're comparing with fault_causes/2,
% or just line(ClassId, LineNum) for fault_locs/2.
% 
% You can obtain only top N elements of your Candidates using top_n(N, Candidates, TopN).
% So if you want to verify top-5 of your Candidates with fault locations,
% ?- your_predicate(Candidates), top_n(5, Candidates, TopN), 
% 	fault_locs(BugId, Locs), verify(TopN, Locs, Matched, Result).
% 

%Rules to retrieve fault locations and causes using BugId.
get_locs([], []).
get_locs([(_, Loc, _)|Total], [Loc|Locs]) :- 
    get_locs(Total, Locs).    

get_causes([], []).
get_causes([(Range, Loc, _)|Total], [(Cause, Loc)|Causes]) :-
    find_cause(Range, Cause),
    get_causes(Total, Causes), !.

find_cause(Range, Cause) :- 
    code(Cause, _, Range) ->  
    	code(Cause, _, Range) ; 
    	Cause = 'no_matching_code_fact', !.

filter(Kind, (_, _, K)) :-
    Kind = K.
faulty_only(BugId, Filtered) :-
    fixed(BugId, Fixed),
    include(filter(faulty), Fixed, Filtered).

fault_locs(BugId, Locs) :-
    faulty_only(BugId, Filtered),
    get_locs(Filtered, AllLocs),
    remove_duplicates(AllLocs, Locs).
fault_causes(BugId, Causes) :-
    faulty_only(BugId, Filtered),
    get_causes(Filtered, Causes).
dev_fix_locs(BugId, Locs) :-
    fixed(BugId, Fixed),
    get_locs(Fixed, AllLocs),
    remove_duplicates(AllLocs, Locs).
dev_fix_causes(BugId, Causes) :-
    fixed(BugId, Fixed),
    get_causes(Fixed, Causes).

%Get TopN locations - First N locations from Locs.
top_n(N, Locs, TopN) :-
    length(Locs, Total),
    N >= Total
    -> Locs = TopN
    ; (length(TopN, N), append(TopN, _, Locs)).

%Rules to verify identified locations with fault locations.
verify([], [_|_], Matched, FinalMatched, Result) :-
    length(Matched, N), N > 0,
    FinalMatched = Matched,
    Result = partially_matched, !.
verify([], [_|_], [], FinalMatched, Result) :-
    FinalMatched = [],
    Result = not_matched, !.
verify([], [], Matched, FinalMatched, Result) :-
    FinalMatched = Matched,
    Result = matched, !.
verify([C|Candidates], FaultLocs, Matched, FinalMatched, Result) :-
    select(C, FaultLocs, Remainders) -> 
    	verify(Candidates, Remainders, [C|Matched], FinalMatched, Result) ;
    	verify(Candidates, FaultLocs, Matched, FinalMatched, Result).

%If FaultLocs is empty, not_available.
verify(Candidates, FaultLocs, FinalMatched, Result) :-
    FaultLocs \= []
    ->  verify(Candidates, FaultLocs, [], FinalMatched, Result) 
    ;	(FinalMatched = [], Result = not_available).    		

%Fault Location Information of the Bugs and Their Fixes.

%Commons Lang - lang_npe_1 ~ 13
fixed(lang_npe_1, 
      [(range(class_loader_utils_1,2223,11,67,67), line(class_loader_utils_1, 67), faulty), 
       (range(class_loader_utils_1,2609,11,77,77), line(class_loader_utils_1, 77), faulty)
      ]).
%this.field access - the expression and the field are both OK.
fixed(lang_npe_2, 
       [(range(mutable_object_1,2812,5,96,96), line(mutable_object_1, 96), faulty)]).
fixed(lang_npe_2, 
       [(range(mutable_object_1,2807,10,96,96), line(mutable_object_1, 96), faulty)]).

fixed(lang_npe_3,
      [(range(type_utils_1,28539,16,805,805), line(type_utils_1, 805), faulty)]).

fixed(lang_npe_4,
      [(range(exception_utils_1,14008,9,376,376), line(exception_utils_1, 376), faulty)]).

fixed(lang_npe_5,
      [(range(duration_utils_1,2726,8,73,73), line(duration_utils_1, 73), faulty)]).

fixed(lang_npe_6,
      [(range(array_utils_1,364346,8,9267,9267), line(array_utils_1, 9267), faulty)]).

fixed(lang_npe_7,
      [(range(streams_1,19452,6,479,479), line(streams_1, 479), faulty)]).

fixed(lang_npe_8,
      [(range(char_sequence_utils_1,12305,2,312,312), line(char_sequence_utils_1, 312), faulty)]).

fixed(lang_npe_9, 
      [(range(member_utils_1, 7314, 25, 165, 165), line(member_utils_1, 165), faulty), 
       (range(member_utils_1, 10198, 8, 231, 231), line(member_utils_1, 231), fixed),
       (range(method_utils_1, 21410, 21, 466, 466), line(method_utils_1, 466), fixed),
       (range(method_utils_1, 32061, 41, 706, 706), line(method_utils_1, 706), faulty)
       ]).

fixed(lang_npe_10, 
      [(range(reflection_to_string_builder_1, 18602, 6, 493, 493), line(reflection_to_string_builder_1, 493), fixed), 
       (range(reflection_to_string_builder_1, 19211, 6, 511, 511), line(reflection_to_string_builder_1, 511), fixed), 
       (range(reflection_to_string_builder_1, 20015, 6, 535, 535), line(reflection_to_string_builder_1, 535), faulty), 
       (range(reflection_to_string_builder_1, 21025, 6, 560, 560), line(reflection_to_string_builder_1, 560), faulty), 
       (range(reflection_to_string_builder_1, 22317, 6, 591, 591), line(reflection_to_string_builder_1, 591), fixed)
       ]).

fixed(lang_npe_11, 
      [(range(str_builder_1, 99295, 5, 2822, 2822), line(str_builder_1, 2822), faulty)]).

fixed(lang_npe_12, 
      [(range(type_utils_1, 15163, 9, 471, 471), line(type_utils_1, 471), faulty)]).

fixed(lang_npe_13, 
      [(range(string_utils_1, 190683, 6, 4694, 4694), line(string_utils_1, 4694), faulty)]).

%Commons Math - math_npe_1 ~ 3
fixed(math_npe_1, 
      [(range(math_utils_1, 81243, 1, 2324, 2324), line(math_utils_1, 2324), faulty)]).

fixed(math_npe_2,
      [(range(polynomial_function_1, 2737, 1, 65, 65), line(polynomial_function_1, 65), fixed),
        (range(polynomial_function_1, 4589, 12, 123, 123), line(polynomial_function_1, 123), fixed),
        (range(polynomial_function_1, 8698, 12, 230, 230), line(polynomial_function_1, 230), fixed),
        (range(complex_1, 5357, 3, 150, 150), line(complex_1, 150), fixed),
        (range(complex_1, 7794, 3, 211, 211), line(complex_1, 211), fixed),
        (range(complex_1,12232,3,358,358), line(complex_1, 358), fixed),
        (range(complex_1,15158,3,443,443), line(complex_1, 443), fixed),
        (range(complex_1,23627,1,680,680), line(complex_1, 680), fixed),
        (range(big_fraction_1,16264,2,465,465), line(big_fraction_1, 465), fixed),
        (range(abstract_real_matrix_1,13575,9,389,389), line(abstract_real_matrix_1, 389), faulty),
        (range(array2_drow_field_matrix_1,6726,1,155,155), line(array2_drow_field_matrix_1, 155), fixed),
        (range(array2_drow_real_matrix_1,10425,9,278,278), line(array2_drow_real_matrix_1, 278), fixed),
        (range(block_field_matrix_1,32822,9,762,762), line(block_field_matrix_1, 762), faulty),
        (range(block_real_matrix_1,32962,9,769,769), line(block_real_matrix_1, 769), faulty),
        (range(empirical_distribution_impl_1,5066,3,139,139), line(empirical_distribution_impl_1, 139), fixed),
        (range(empirical_distribution_impl_1,5990,4,166,166), line(empirical_distribution_impl_1, 166), fixed),
        (range(empirical_distribution_impl_1,10043,2,294,294), line(empirical_distribution_impl_1, 294), fixed),
        (range(descriptive_statistics_1,24448,4,706,706), line(descriptive_statistics_1, 706), fixed),
        (range(descriptive_statistics_1,24459,6,706,706), line(descriptive_statistics_1, 706), fixed),
        (range(first_moment_1,4316,4,154,154), line(first_moment_1, 154), fixed),
        (range(first_moment_1,4329,6,154,154), line(first_moment_1, 154), fixed),
        (range(fourth_moment_1,4043,4,140,140), line(fourth_moment_1, 140), fixed),
        (range(fourth_moment_1,4053,6,140,140), line(fourth_moment_1, 140), fixed),
        (range(geometric_mean_1,6200,4,189,189), line(geometric_mean_1, 189), fixed),
        (range(geometric_mean_1,6213,6,189,189), line(geometric_mean_1, 189), fixed),
        (range(kurtosis_1,7007,4,217,217), line(kurtosis_1, 217), fixed),
        (range(kurtosis_1,7020,6,217,217), line(kurtosis_1, 217), fixed),
        (range(mean_1,9702,4,268,268), line(mean_1, 268), fixed),
        (range(mean_1,9715,6,268,268), line(mean_1, 268), fixed),
        (range(second_moment_1,3526,4,120,120), line(second_moment_1, 120), fixed),
        (range(second_moment_1,3518,6,120,120), line(second_moment_1, 120), fixed),
        (range(semi_variance_1,6139,4,162,162), line(semi_variance_1, 162), fixed),
        (range(semi_variance_1,6152,6,162,162), line(semi_variance_1, 162), fixed),
        (range(skewness_1,6389,4,209,209), line(skewness_1, 209), fixed),
        (range(skewness_1,6402,6,209,209), line(skewness_1, 209), fixed),        
        (range(standard_deviation_1,9697,4,267,267), line(standard_deviation_1, 267), fixed),
        (range(standard_deviation_1,9710,6,267,267), line(standard_deviation_1, 267), fixed),        
        (range(third_moment_1,4020,4,134,134), line(third_moment_1, 134), fixed),
        (range(third_moment_1,4012,6,134,134), line(third_moment_1, 134), fixed),
        (range(variance_1,24191,4,605,605), line(variance_1, 605), fixed),
        (range(variance_1,24204,6,605,605), line(variance_1, 605), fixed),        
        (range(max_1,4817,4,159,159), line(max_1, 159), fixed),
        (range(max_1,4830,6,159,159), line(max_1, 159), fixed),
        (range(min_1,4816,4,159,159), line(min_1, 159), fixed),
        (range(min_1,4829,6,159,159), line(min_1, 159), fixed),        
        (range(percentile_1,18520,4,488,488), line(percentile_1, 488), fixed),
        (range(percentile_1,18533,6,488,488), line(percentile_1, 488), fixed),        
        (range(product_1,7268,4,216,216), line(product_1, 216), fixed),
        (range(product_1,7281,6,216,216), line(product_1, 216), fixed),        
        (range(sum_1,6691,4,212,212), line(sum_1, 212), fixed),
        (range(sum_1,6704,6,212,212), line(sum_1, 212), fixed),        
        (range(sum_of_logs_1,4740,4,158,158), line(sum_of_logs_1, 158), fixed),
        (range(sum_of_logs_1,4753,6,158,158), line(sum_of_logs_1, 158), fixed),        
        (range(sum_of_squares_1,4220,4,146,146), line(sum_of_squares_1, 146), fixed),
        (range(sum_of_squares_1,4233,6,146,146), line(sum_of_squares_1, 146), fixed),        
        (range(summary_statistics_1,22187,4,658,658), line(summary_statistics_1, 658), fixed),
        (range(summary_statistics_1,22202,6,658,658), line(summary_statistics_1, 658), fixed),        
        (range(synchronized_descriptive_statistics_1,4711,4,168,168), line(synchronized_descriptive_statistics_1, 168), fixed),
        (range(synchronized_descriptive_statistics_1,4703,6,168,168), line(synchronized_descriptive_statistics_1, 168), fixed),        
        (range(synchronized_summary_statistics_1,7867,4,328,328), line(synchronized_summary_statistics_1, 328), fixed),
        (range(synchronized_summary_statistics_1,7859,6,328,328), line(synchronized_summary_statistics_1, 328), fixed),        
        (range(chi_square_test_impl_1,13627,2,344,344), line(chi_square_test_impl_1, 344), fixed),        
        (range(resizable_double_array_1,11864,8,287,287), line(resizable_double_array_1, 287), fixed),        
        (range(resizable_double_array_1,32584,4,837,837), line(resizable_double_array_1, 837), fixed),
        (range(resizable_double_array_1,32607,6,837,837), line(resizable_double_array_1, 837), fixed)
      ]).

fixed(math_npe_3, 
      [(range(message_factory_1, 2554, 7, 66, 66), line(message_factory_1, 66), faulty)]).

%Commons Collections - collections_npe_1 ~ 3
fixed(collections_npe_1, 
      [(range(composite_map_1, 5219, 3, 136, 136), line(composite_map_1, 136), faulty)]).

fixed(collections_npe_2,
      [(range(composite_set_1, 8240, 4, 255, 255), line(composite_set_1, 255), faulty),
        (range(composite_set_1, 9724, 4, 294, 294), line(composite_set_1, 294), faulty),
        (range(composite_set_1, 11789, 3, 358, 358), line(composite_set_1, 358), faulty),
        (range(composite_set_1, 13016, 4, 391, 391), line(composite_set_1, 391), fixed)
        ]).

fixed(collections_npe_3, 
      [(range(composite_collection_1, 9119, 4, 263, 263), line(composite_collection_1, 263), faulty),
        (range(composite_collection_1, 10686, 4, 303, 303), line(composite_collection_1, 303), faulty),
        (range(composite_collection_1, 11496, 4, 327, 327), line(composite_collection_1, 327), faulty),
        (range(composite_collection_1, 12496, 19, 362, 362), line(composite_collection_1, 362), faulty),
        (range(composite_collection_1, 12950, 20, 373, 373), line(composite_collection_1, 373), faulty),
        (range(composite_collection_1, 12989, 20, 374, 374), line(composite_collection_1, 374), faulty),
        (range(composite_collection_1, 13310, 20, 383, 383), line(composite_collection_1, 383), faulty)
        ]).

%Commons IO - commons-io_npe_1 ~ 19
fixed(commonsio_npe_1, 
      [(range(iocase_1, 7874, 6, 218, 218), line(iocase_1, 218), faulty)]).

fixed(commonsio_npe_2, 
      [(range(iocase_1, 6859, 3, 192, 192), line(iocase_1, 192), faulty),
        (range(iocase_1, 6874, 6, 192, 192), line(iocase_1, 192), faulty)
        ]).

fixed(commonsio_npe_3, 
      [(range(can_execute_file_filter_1,2728,4,85,85), line(can_execute_file_filter_1, 85), fixed),
        (range(can_execute_file_filter_1,3125,4,97,97), line(can_execute_file_filter_1, 97), fixed),
        (range(can_read_file_filter_1,3068,4,95,95), line(can_read_file_filter_1, 95), faulty),
        (range(can_read_file_filter_1,3451,4,107,107), line(can_read_file_filter_1, 107), fixed),
        (range(can_write_file_filter_1,2745,4,83,83), line(can_write_file_filter_1,83), faulty),
        (range(can_write_file_filter_1,3140,4,95,95), line(can_write_file_filter_1, 95), fixed),        
        (range(directory_file_filter_1,3226,4,100,100), line(directory_file_filter_1, 100), fixed),
        (range(directory_file_filter_1,3585,4,112,112), line(directory_file_filter_1, 112), fixed),        
        (range(empty_file_filter_1,3435,4,107,107), line(empty_file_filter_1, 107), faulty),
        (range(empty_file_filter_1,4004,4,124,124), line(empty_file_filter_1, 124), fixed),        
        (range(file_file_filter_1,3058,4,100,100), line(file_file_filter_1, 100), faulty),        
        (range(file_file_filter_1,3405,4,112,112), line(file_file_filter_1, 112), fixed),        
        (range(hidden_file_filter_1,3275,4,104,104), line(hidden_file_filter_1, 104), fixed),
        (range(hidden_file_filter_1,3678,4,117,117), line(hidden_file_filter_1, 117), faulty),
        (range(name_file_filter_1,5777,4,166,166), line(name_file_filter_1, 166), faulty),        
        (range(size_file_filter_1,4200,4,123,123), line(size_file_filter_1, 123), fixed),
        (range(iocase_1,6085,4,173,173), line(iocase_1, 173), fixed),
        (range(iocase_1,6131,4,174,174), line(iocase_1, 174), faulty)        
        ]).

fixed(commonsio_npe_4, 
      [(range(path_utils_1, 38842, 4, 881, 881), line(path_utils_1, 881), faulty)]).

%The NPE happened since pathToString field is null, yet the patch takes "pathToString.apply(path)" out.
%At this point pathToString is not null, due to the null checkers added to constructors.
fixed(commonsio_npe_5, 
      [(range(regex_file_filter_1, 3783, 15, 114, 114), line(regex_file_filter_1, 114), faulty),
        (range(regex_file_filter_1, 4324, 12, 128, 128), line(regex_file_filter_1, 128), faulty),
        (range(regex_file_filter_1, 6262, 12, 184, 184), line(regex_file_filter_1, 184), faulty)
      ]).

fixed(commonsio_npe_6, 
      [(range(reader_input_stream_1,5973,7,132,132), line(reader_input_stream_1, 132), faulty)]).

fixed(commonsio_npe_7, 
      [(range(reader_input_stream_1,6270,14,140,140), line(reader_input_stream_1, 140), faulty)]).

fixed(commonsio_npe_8, 
      [(range(path_utils_1, 53577, 4, 1215, 1215), line(path_utils_1, 1215), faulty)]).

fixed(commonsio_npe_9, 
      [(range(writer_output_stream_1, 7871, 7, 170, 170), line(writer_output_stream_1, 170), faulty),
        (range(writer_output_stream_1,9564,7,206,206), line(writer_output_stream_1, 206), faulty),
        (range(writer_output_stream_1,9637,7,208,208), line(writer_output_stream_1, 208), fixed),
        (range(writer_output_stream_1,11186,11,239,239), line(writer_output_stream_1, 239), fixed)
        ]).

fixed(commonsio_npe_10, 
      [(range(char_sequence_input_stream_1,2707,7,75,75), line(char_sequence_input_stream_1, 75), faulty),
        (range(char_sequence_input_stream_1,4058,7,107,107), line(char_sequence_input_stream_1, 107), fixed)
        ]).

fixed(commonsio_npe_11, 
      [(range(reader_input_stream_1,6715,7,149,149), line(reader_input_stream_1, 149), faulty),
        (range(reader_input_stream_1,7710,14,177,177), line(reader_input_stream_1, 177), faulty),
        (range(reader_input_stream_1,7790,14,178,178), line(reader_input_stream_1, 178), faulty),
        (range(reader_input_stream_1,8742,11,203,203), line(reader_input_stream_1, 203), fixed)
        ]).

fixed(commonsio_npe_12, 
      [(range(file_writer_with_encoding_1,9257,8,226,226), line(file_writer_with_encoding_1, 226), faulty),
        (range(file_writer_with_encoding_1,9565,8,231,231), line(file_writer_with_encoding_1, 231), fixed),
        (range(file_writer_with_encoding_1,9660,8,232,232), line(file_writer_with_encoding_1, 232), fixed)
        ]).

fixed(commonsio_npe_13, 
      [(range(name_file_filter_1, 6646, 18, 190, 190), line(name_file_filter_1, 190), fixed),
        (range(prefix_file_filter_1,6348,4,171,171), line(prefix_file_filter_1, 171), fixed),
        (range(prefix_file_filter_1,7070,18,195,195), line(prefix_file_filter_1, 195), fixed),
        (range(suffix_file_filter_1,7126,18,196,196), line(suffix_file_filter_1, 196), fixed),
        (range(wildcard_file_filter_1,7347,18,198,198), line(wildcard_file_filter_1, 198), fixed),
        (range(wildcard_filter_1,5593,18,161,161), line(wildcard_filter_1, 161), fixed),
        (range(iocase_1,6001,5,180,180), line(iocase_1, 180), faulty),
        (range(iocase_1,5958,3,180,180), line(iocase_1, 180), fixed),
        (range(iocase_1,6562,3,196,196), line(iocase_1, 196), faulty),
        (range(iocase_1,6591,3,197,197), line(iocase_1, 197), fixed)
        ]).

fixed(commonsio_npe_14, 
      [(range(ioutils_1,26406,6,716,716), line(ioutils_1, 716), faulty),
        (range(ioutils_1,26339,6,715,715), line(ioutils_1, 715), fixed),
        (range(ioutils_1,27484,6,749,749), line(ioutils_1, 749), fixed),
        (range(ioutils_1,27527,6,750,750), line(ioutils_1, 750), fixed),
        (range(ioutils_1,27554,6,752,752), line(ioutils_1, 752), fixed),
        (range(ioutils_1,27625,6,754,754), line(ioutils_1, 754), fixed),
        (range(ioutils_1,27730,6,758,758), line(ioutils_1, 758), fixed),
        (range(ioutils_1,27780,6,761,761), line(ioutils_1, 761), fixed)
        ]).

fixed(commonsio_npe_15, 
      [(range(ioutils_1,44396,5,1160,1160), line(ioutils_1, 1160), faulty)]).

fixed(commonsio_npe_16, 
      [(range(file_utils_1,16051,5,448,448), line(file_utils_1, 448), faulty),
        (range(file_utils_1,16094,5,449,449), line(file_utils_1, 449), fixed)
        ]).

fixed(commonsio_npe_17, 
      [(range(file_utils_1,14030,5,391,391), line(file_utils_1, 391), faulty),
        (range(file_utils_1,14073,5,392,392), line(file_utils_1, 392), fixed)
        ]).

fixed(commonsio_npe_18, 
      [(range(ioutils_1,28993,6,792,792), line(ioutils_1, 792), faulty),
        (range(ioutils_1,29054,6,793,793), line(ioutils_1, 793), fixed)
        ]).

fixed(commonsio_npe_19, 
      [(range(ioutils_1,27636,6,753,753), line(ioutils_1, 753), faulty),
        (range(ioutils_1,27702,6,754,754), line(ioutils_1, 754), fixed)
        ]).

% Defects4j - 38 bugs.

% In case of Chart-2, the values of minimum, maximum decide whether null is returned or not.
% Hence faulty lines are set to the comparisons of the values, line 779 and 1283.
% 'fixed' lines are in for & if statements, which should include proper handling of minimum, maximum variables.
% These fixed lines didn't exist in the buggy code, hence line numbers can be varied and there is no corresponding range/5.
% Newly added code can work anywhere as long as they are under the for & if statements, 
% hence they are not considered as fault locations.
fixed(d4j_chart_2, 
      [(range(dataset_utilities_1,31354,7,779,779), line(dataset_utilities_1, 779), faulty),
        (range(dataset_utilities_1,31364,7,779,779), line(dataset_utilities_1, 779), faulty),
        (range(dataset_utilities_1,52104,7,1283,1283), line(dataset_utilities_1, 1283), faulty),
        (none, line(dataset_utilities_1, 755), fixed),
        (none, line(dataset_utilities_1, 757), fixed),
        (none, line(dataset_utilities_1, 758), fixed),
        (none, line(dataset_utilities_1, 761), fixed),
        (none, line(dataset_utilities_1, 1242), fixed),
        (none, line(dataset_utilities_1, 1244), fixed),
        (none, line(dataset_utilities_1, 1245), fixed),
        (none, line(dataset_utilities_1, 1248), fixed)
        ]).

fixed(d4j_chart_4, 
      [(range(xyplot_1,160968,1,4493,4493), line(xyplot_1, 4493), faulty)]).

fixed(d4j_chart_14, 
      [(range(category_plot_1,75454,7,2166,2166), line(category_plot_1, 2166), faulty),
        (range(category_plot_1,85449,7,2448,2448), line(category_plot_1, 2448), faulty),
        (range(xyplot_1,78936,7,2293,2293), line(xyplot_1, 2293), faulty),
        (range(xyplot_1,87432,7,2529,2529), line(xyplot_1, 2529), faulty)
        ]).

% this.startData[0] is not covered, but fixed.
fixed(d4j_chart_16, 
      [(range(default_interval_category_dataset_1, 8671, 4, 207, 207), line(default_interval_category_dataset_1, 207), faulty),
        (range(default_interval_category_dataset_1, 8714, 4, 208, 208), line(default_interval_category_dataset_1, 208), faulty),
        (range(default_interval_category_dataset_1, 12565, 17, 338, 338), line(default_interval_category_dataset_1, 338), fixed)
        ]).

fixed(d4j_cli_5, 
      [(range(util_1,1284,3,36,36), line(util_1, 36), faulty)]).

fixed(d4j_cli_30, 
      [(range(default_parser_1,5526,3,159,159), line(default_parser_1, 159), faulty),
        (range(parser_1,8823,3,272,272), line(parser_1, 272), faulty)
        ]).

fixed(d4j_closure_2, 
      [(range(type_check_1,54738,13,1574,1574), line(type_check_1, 1574), faulty)]).

% The dev. written patch itself is simple, but why this patch solves the issue is complicated.
% Lines which new code snippets were inserted have been listed as fault locations.
% For TypedScopeCreator line 1670, the method isQualifiedNameInferred() should return false, when qName.endsWith(".prototype") is satisfied.
% Originally, this method returns boolean variable 'inferred' declared at line 1670. So this is set as a cause.
% For TypeInference line 736, it decides whether scope will be returned based on a certain condition, and the condition is changed.
% So the original if condition is set to ba a cause.
fixed(d4j_closure_171, 
      [(range(typed_scope_creator_1,63682,8,1670,1670), line(typed_scope_creator_1, 1670), faulty),
        (range(type_inference_1,25768,46,736,736), line(type_inference_1, 736), faulty)
        ]).

fixed(d4j_codec_5, 
      [(range(base64_1, 23609, 6, 594, 594), line(base64_1, 594), faulty)]).

fixed(d4j_codec_13, 
      [(range(double_metaphone_1,8956,34,244,244), line(double_metaphone_1, 244), faulty)]).

fixed(d4j_codec_17, 
      [(range(string_utils_1,15231,5,339,339), line(string_utils_1, 339), faulty)]).

%Both this.headerMap or headerMap only works.
fixed(d4j_csv_4, 
      [(range(csvparser_1,9858,9,288,288), line(csvparser_1, 288), faulty)]).
fixed(d4j_csv_4, 
      [(range(csvparser_1,9853,14,288,288), line(csvparser_1, 288), faulty)]).

fixed(d4j_csv_9, 
      [(range(csvrecord_1,5793,7,180,180), line(csvrecord_1, 180), faulty)]).

fixed(d4j_csv_11, 
      [(range(csvparser_1,13568,6,384,384), line(csvparser_1, 384), faulty)]).

fixed(d4j_gson_6, 
      [(range(json_adapter_annotation_type_adapter_factory_1, 2721, 11, 67, 67), 
       	line(json_adapter_annotation_type_adapter_factory_1, 67), faulty)]).

%There is no specific code entity. 
%Fault of omission - the fix adds the same method with Boolean parameter instead of boolean.
%The original boolean parameter type and its line are considered the faulty location.
%The same patch is done for JsonTreeWrite too.
fixed(d4j_gson_9, 
      [(range(json_writer_1, 13894, 7, 464, 464), line(json_writer_1, 464), faulty),
        (range(json_tree_writer_1, 4639, 7, 157, 157), line(json_tree_writer_1, 157), faulty)]).

fixed(d4j_jacksoncore_8, 
      [(range(text_buffer_1,9166,15,307,307), line(text_buffer_1, 307), faulty)]).

fixed(d4j_jacksondatabind_3, 
      [(range(string_array_deserializer_1,2248,20,66,66), line(string_array_deserializer_1, 66), faulty),
        (range(string_array_deserializer_1,3347,4,95,95), line(string_array_deserializer_1, 95), fixed)]).

fixed(d4j_jacksondatabind_13, 
      [(range(default_deserialization_context_1, 3288, 2, 88, 88), line(default_deserialization_context_1, 88), faulty),
        (range(object_id_value_property_1,3080,2,93,93), line(object_id_value_property_1, 93), faulty)]).

%The test calls f2.setLenient(false), f2 is StdDateFormat instance, but there is no setLenient().
%Hence DateFormat's setLenient() is called, and it will execute calendar.setLenient(lenient).
%But the calendar field is never initialized, cause there is no such part in StdDateFormat's constructor.
%The key of the dev. fix is adding setLenient(), so that super method is never called.
%Eventually, there is no proper identifiable fix locations in the buggy code.
%We simply put dev. fixed lines for answers.
fixed(d4j_jacksondatabind_36, 
      [(none, line(std_date_format_1, 250), fixed),
        (none, line(std_date_format_1, 555), fixed)]).

fixed(d4j_jacksondatabind_80, 
      [(range(std_subtype_resolver_1,5936,8,145,145), line(std_subtype_resolver_1, 145), faulty),
        (range(std_subtype_resolver_1,2877,8,79,79), line(std_subtype_resolver_1, 79), fixed)]).

%Line 84 was fixed to avoid 'cls' doesn't have null.
%But NPE happens line 85, before the for updater at line 84 is executed, so this was picked for the cause.
fixed(d4j_jacksondatabind_93, 
      [(range(sub_type_validator_1,3762,3,85,85), line(sub_type_validator_1, 85), faulty)]).

%TypeBindings.emptyBindings() is replaced with EMPTY_BINDINGS.
fixed(d4j_jacksondatabind_95, 
      [(range(type_factory_1,12738,28,355,355), line(type_factory_1, 355), fixed),
        (range(type_factory_1,13280,28,366,366), line(type_factory_1, 366), fixed),
        (range(type_factory_1,35078,4,896,896), line(type_factory_1, 896), fixed),
        (range(type_parser_1, 1839, 4, 59, 59), line(type_parser_1, 59), faulty)]).

fixed(d4j_jacksondatabind_107, 
      [(range(type_deserializer_base_1, 5814, 4, 165, 165), line(type_deserializer_base_1, 165), faulty)]).

fixed(d4j_jsoup_8, 
      [(range(node_1,11348,15,363,363), line(node_1, 363), faulty)]).

%Some other lines were also fixed, which refer to parent() or parentNode.
fixed(d4j_jsoup_22, 
      [(range(node_1,14708,8,445,445), line(node_1, 445), faulty),
        (range(node_1,15404,10,471,471), line(node_1, 471), fixed),
        (range(element_1,14397,8,435,435), line(element_1, 435), fixed),
        (range(element_1,14911,8,447,447), line(element_1, 447), fixed),        
        (range(element_1,15408,8,462,462), line(element_1, 462), fixed)]).

%If dirtyDocument.body() is null, that is passed to the actual NPE location, so dev. fixed line is considered as the faulty line.
fixed(d4j_jsoup_26, 
      [(range(cleaner_1,1662,20,43,43), line(cleaner_1, 43), faulty)]).

%The dev. fix introduces a new constructor of NodeList with Element owner.
%The test creates Document clone, then gets clone.body().child(0) to obtain a child Element node.
%Then this Element node's sibling element node is null.
%To avoid this, the fix uses a new NodeList constructor to create child nodes.
%Changed parts are added as faulty locations.
fixed(d4j_jsoup_66, 
      [(range(element_1,2826,15,89,89), line(element_1, 89), faulty),
        (range(element_1,50482,31,1402,1402), line(element_1, 1402), faulty),
        (range(element_1,50805,17,1414,1414), line(element_1, 1414), faulty)]).

fixed(d4j_jsoup_89, 
      [(range(attribute_1,2836,6,88,88), line(attribute_1, 88), faulty)]).

fixed(d4j_lang_20, 
      [(range(string_utils_1,136931,28,3298,3298), line(string_utils_1, 3298), faulty), 
       (range(string_utils_1,140358,28,3383,3383), line(string_utils_1, 3383), faulty)
      ]).

fixed(d4j_lang_33, 
      [(range(class_utils_1,37206,8,910,910), line(class_utils_1, 910), faulty)]).

fixed(d4j_lang_39, 
      [(range(string_utils_1,149047,18,3676,3676), line(string_utils_1, 3676), faulty),
        (range(string_utils_1,149077,13,3676,3676), line(string_utils_1, 3676), fixed)]).

fixed(d4j_lang_47, 
      [(range(str_builder_1,38712,3,1186,1186), line(str_builder_1, 1186), faulty),
        (range(str_builder_1,40561,3,1230,1230), line(str_builder_1, 1230), faulty)]).

fixed(d4j_lang_57, 
      [(range(locale_utils_1,8681,19,223,223), line(locale_utils_1, 223), faulty)]).

fixed(d4j_math_4, 
      [(range(sub_line_1,5085,3,116,116), line(sub_line_1, 116), faulty),
        (range(sub_line_2,5513,3,120,120), line(sub_line_2, 120), faulty)
        ]).

%At line 72, solve() is called again using method overloading, but the parameter 'f' is not passed properly.
%So since the callee solve() doesn't have non-null 'f', it uses the field 'f' which is null.
%Based on the fix, the call of solve(min, max) is considered as the cause of NPE.
fixed(d4j_math_70, 
      [(range(bisection_solver_1,2603,15,72,72), line(bisection_solver_1, 72), faulty)]).

%The dev. fix replaces 'int' to 'double'. 
fixed(d4j_math_79, 
      [(range(math_utils_1, 55668, 3, 1624, 1624), line(math_utils_1, 1624), faulty),
        (range(math_utils_1, 55741, 3, 1626, 1626), line(math_utils_1, 1626), faulty)]).

%In dev. fix, it adds an if condition to return a default list, to avoid hit the last 'return null'.
%The added if and return statements can be inserted anywhere before the 'return null', 
%so it is not considered as a fix location, and the final null literal is considered as the cause of NPE.
fixed(d4j_mockito_18, 
      [(range(returns_empty_values_1, 4664, 4, 117, 117), line(returns_empty_values_1, 117), faulty)]).

fixed(d4j_mockito_38, 
      [(range(argument_matching_tool_1,1653,3,48,48), line(argument_matching_tool_1, 48), faulty)]).


%References for Class ID - Class Name Mapping.
class_name(lang_npe_1, class_loader_utils_1, 'org.apache.commons.lang3.ClassLoaderUtils').
class_name(lang_npe_2, mutable_object_1, 'org.apache.commons.lang3.mutable.MutableObject').
class_name(lang_npe_3, type_utils_1, 'org.apache.commons.lang3.reflect.TypeUtils').
class_name(lang_npe_4, exception_utils_1, 'org.apache.commons.lang3.exception.ExceptionUtils').
class_name(lang_npe_5, duration_utils_1, 'org.apache.commons.lang3.time.DurationUtils').
class_name(lang_npe_6, array_utils_1, 'org.apache.commons.lang3.ArrayUtils').
class_name(lang_npe_7, streams_1, 'org.apache.commons.lang3.stream.Streams').
class_name(lang_npe_8, char_sequence_utils_1, 'org.apache.commons.lang3.CharSequenceUtils').
class_name(lang_npe_9, member_utils_1, 'org.apache.commons.lang3.reflect.MemberUtils').
class_name(lang_npe_9, method_utils_1, 'org.apache.commons.lang3.reflect.MethodUtils').
class_name(lang_npe_10, reflection_to_string_builder_1, 'org.apache.commons.lang3.builder.ReflectionToStringBuilder').
class_name(lang_npe_11, str_builder_1, 'org.apache.commons.lang3.text.StrBuilder').
class_name(lang_npe_12, type_utils_1, 'org.apache.commons.lang3.reflect.TypeUtils').
class_name(lang_npe_13, string_utils_1, 'org.apache.commons.lang3.StringUtils').
class_name(math_npe_1, math_utils_1, 'org.apache.commons.math.util.MathUtils').
class_name(math_npe_2, polynomial_function_1, 'org.apache.commons.math.analysis.polynomials.PolynomialFunction').
class_name(math_npe_2, complex_1, 'org.apache.commons.math.complex.Complex').
class_name(math_npe_2, big_fraction_1, 'org.apache.commons.math.fraction.BigFraction').
class_name(math_npe_2, abstract_real_matrix_1, 'org.apache.commons.math.linear.AbstractRealMatrix').
class_name(math_npe_2, array2_drow_field_matrix_1, 'org.apache.commons.math.linear.Array2DRowFieldMatrix').
class_name(math_npe_2, array2_drow_real_matrix_1, 'org.apache.commons.math.linear.Array2DRowRealMatrix').
class_name(math_npe_2, block_field_matrix_1, 'org.apache.commons.math.linear.BlockFieldMatrix').
class_name(math_npe_2, block_real_matrix_1, 'org.apache.commons.math.linear.BlockRealMatrix').
class_name(math_npe_2, empirical_distribution_impl_1, 'org.apache.commons.math.random.EmpiricalDistributionImpl').
class_name(math_npe_2, descriptive_statistics_1, 'org.apache.commons.math.stat.descriptive.DescriptiveStatistics').
class_name(math_npe_2, first_moment_1, 'org.apache.commons.math.stat.descriptive.moment.FirstMoment').
class_name(math_npe_2, fourth_moment_1, 'org.apache.commons.math.stat.descriptive.moment.FourthMoment').
class_name(math_npe_2, geometric_mean_1, 'org.apache.commons.math.stat.descriptive.moment.GeometricMean').
class_name(math_npe_2, kurtosis_1, 'org.apache.commons.math.stat.descriptive.moment.Kurtosis').
class_name(math_npe_2, mean_1, 'org.apache.commons.math.stat.descriptive.moment.Mean').
class_name(math_npe_2, second_moment_1, 'org.apache.commons.math.stat.descriptive.moment.SecondMoment').
class_name(math_npe_2, semi_variance_1, 'org.apache.commons.math.stat.descriptive.moment.SemiVariance').
class_name(math_npe_2, skewness_1, 'org.apache.commons.math.stat.descriptive.moment.Skewness').
class_name(math_npe_2, standard_deviation_1, 'org.apache.commons.math.stat.descriptive.moment.StandardDeviation').
class_name(math_npe_2, third_moment_1, 'org.apache.commons.math.stat.descriptive.moment.ThirdMoment').
class_name(math_npe_2, variance_1, 'org.apache.commons.math.stat.descriptive.moment.Variance').
class_name(math_npe_2, max_1, 'org.apache.commons.math.stat.descriptive.rank.Max').
class_name(math_npe_2, min_1, 'org.apache.commons.math.stat.descriptive.rank.Min').
class_name(math_npe_2, percentile_1, 'org.apache.commons.math.stat.descriptive.rank.Percentile').
class_name(math_npe_2, product_1, 'org.apache.commons.math.stat.descriptive.summary.Product').
class_name(math_npe_2, sum_1, 'org.apache.commons.math.stat.descriptive.summary.Sum').
class_name(math_npe_2, sum_of_logs_1, 'org.apache.commons.math.stat.descriptive.summary.SumOfLogs').
class_name(math_npe_2, sum_of_squares_1, 'org.apache.commons.math.stat.descriptive.summary.SumOfSquares').
class_name(math_npe_2, summary_statistics_1, 'org.apache.commons.math.stat.descriptive.SummaryStatistics').
class_name(math_npe_2, synchronized_descriptive_statistics_1, 'org.apache.commons.math.stat.descriptive.SynchronizedDescriptiveStatistics').
class_name(math_npe_2, synchronized_summary_statistics_1, 'org.apache.commons.math.stat.descriptive.SynchronizedSummaryStatistics').
class_name(math_npe_2, chi_square_test_impl_1, 'org.apache.commons.math.stat.inference.ChiSquareTestImpl').
class_name(math_npe_2, resizable_double_array_1, 'org.apache.commons.math.util.ResizableDoubleArray').
class_name(math_npe_3, message_factory_1, 'org.apache.commons.math.exception.util.MessageFactory').
class_name(collections_npe_1, composite_map_1, 'org.apache.commons.collections4.map.CompositeMap').
class_name(collections_npe_2, composite_set_1, 'org.apache.commons.collections4.set.CompositeSet').
class_name(collections_npe_3, composite_collection_1, 'org.apache.commons.collections4.collection.CompositeCollection').
class_name(commonsio_npe_1, iocase_1, 'org.apache.commons.io.IOCase').
class_name(commonsio_npe_2, iocase_1, 'org.apache.commons.io.IOCase').
class_name(commonsio_npe_3, can_execute_file_filter_1, 'org.apache.commons.io.filefilter.CanExecuteFileFilter').
class_name(commonsio_npe_3, can_read_file_filter_1, 'org.apache.commons.io.filefilter.CanReadFileFilter').
class_name(commonsio_npe_3, can_write_file_filter_1, 'org.apache.commons.io.filefilter.CanWriteFileFilter').
class_name(commonsio_npe_3, directory_file_filter_1, 'org.apache.commons.io.filefilter.DirectoryFileFilter').
class_name(commonsio_npe_3, empty_file_filter_1, 'org.apache.commons.io.filefilter.EmptyFileFilter').
class_name(commonsio_npe_3, file_file_filter_1, 'org.apache.commons.io.filefilter.FileFileFilter').
class_name(commonsio_npe_3, hidden_file_filter_1, 'org.apache.commons.io.filefilter.HiddenFileFilter').
class_name(commonsio_npe_3, name_file_filter_1, 'org.apache.commons.io.filefilter.NameFileFilter').
class_name(commonsio_npe_3, size_file_filter_1, 'org.apache.commons.io.filefilter.SizeFileFilter').
class_name(commonsio_npe_3, iocase_1, 'org.apache.commons.io.IOCase').
class_name(commonsio_npe_4, path_utils_1, 'org.apache.commons.io.file.PathUtils').
class_name(commonsio_npe_5, regex_file_filter_1, 'org.apache.commons.io.filefilter.RegexFileFilter').
class_name(commonsio_npe_6, reader_input_stream_1, 'org.apache.commons.io.input.ReaderInputStream').
class_name(commonsio_npe_7, reader_input_stream_1, 'org.apache.commons.io.input.ReaderInputStream').
class_name(commonsio_npe_8, path_utils_1, 'org.apache.commons.io.file.PathUtils').
class_name(commonsio_npe_9, writer_output_stream_1, 'org.apache.commons.io.output.WriterOutputStream').
class_name(commonsio_npe_10, char_sequence_input_stream_1, 'org.apache.commons.io.input.CharSequenceInputStream').
class_name(commonsio_npe_11, reader_input_stream_1, 'org.apache.commons.io.input.ReaderInputStream').
class_name(commonsio_npe_12, file_writer_with_encoding_1, 'org.apache.commons.io.output.FileWriterWithEncoding').
class_name(commonsio_npe_13, name_file_filter_1, 'org.apache.commons.io.filefilter.NameFileFilter').
class_name(commonsio_npe_13, prefix_file_filter_1, 'org.apache.commons.io.filefilter.PrefixFileFilter').
class_name(commonsio_npe_13, suffix_file_filter_1, 'org.apache.commons.io.filefilter.SuffixFileFilter').
class_name(commonsio_npe_13, wildcard_file_filter_1, 'org.apache.commons.io.filefilter.WildcardFileFilter').
class_name(commonsio_npe_13, wildcard_filter_1, 'org.apache.commons.io.filefilter.WildcardFilter').
class_name(commonsio_npe_13, iocase_1, 'org.apache.commons.io.IOCase').
class_name(commonsio_npe_14, ioutils_1, 'org.apache.commons.io.IOUtils').
class_name(commonsio_npe_15, ioutils_1, 'org.apache.commons.io.IOUtils').
class_name(commonsio_npe_16, file_utils_1, 'org.apache.commons.io.FileUtils').
class_name(commonsio_npe_17, file_utils_1, 'org.apache.commons.io.FileUtils').
class_name(commonsio_npe_18, ioutils_1, 'org.apache.commons.io.IOUtils').
class_name(commonsio_npe_19, ioutils_1, 'org.apache.commons.io.IOUtils').
class_name(d4j_chart_2, dataset_utilities_1, 'org.jfree.data.general.DatasetUtilities').
class_name(d4j_chart_4, xyplot_1, 'org.jfree.chart.plot.XYPlot').
class_name(d4j_chart_14, category_plot_1, 'org.jfree.chart.plot.CategoryPlot').
class_name(d4j_chart_14, xyplot_1, 'org.jfree.chart.plot.XYPlot').
class_name(d4j_chart_16, default_interval_category_dataset_1, 'org.jfree.data.category.DefaultIntervalCategoryDataset').
class_name(d4j_cli_5, util_1, 'org.apache.commons.cli.Util').
class_name(d4j_cli_30, default_parser_1, 'org.apache.commons.cli.DefaultParser').
class_name(d4j_cli_30, parser_1, 'org.apache.commons.cli.Parser').
class_name(d4j_closure_2, type_check_1, 'com.google.javascript.jscomp.TypeCheck').
class_name(d4j_closure_171, typed_scope_creator_1, 'com.google.javascript.jscomp.TypedScopeCreator').
class_name(d4j_closure_171, type_inference_1, 'com.google.javascript.jscomp.TypeInference').
class_name(d4j_codec_5, base64_1, 'org.apache.commons.codec.binary.Base64').
class_name(d4j_codec_13, double_metaphone_1, 'org.apache.commons.codec.language.DoubleMetaphone').
class_name(d4j_codec_17, string_utils_1, 'org.apache.commons.codec.binary.StringUtils').
class_name(d4j_csv_4, csvparser_1, 'org.apache.commons.csv.CSVParser').
class_name(d4j_csv_9, csvrecord_1, 'org.apache.commons.csv.CSVRecord').
class_name(d4j_csv_11, csvparser_1, 'org.apache.commons.csv.CSVParser').
class_name(d4j_gson_6, json_adapter_annotation_type_adapter_factory_1, 'com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory').
class_name(d4j_gson_9, json_writer_1, 'com.google.gson.stream.JsonWriter').
class_name(d4j_gson_9, json_tree_writer_1, 'com.google.gson.internal.bind.JsonTreeWriter').
class_name(d4j_jacksoncore_8, text_buffer_1, 'com.fasterxml.jackson.core.util.TextBuffer').
class_name(d4j_jacksondatabind_3, string_array_deserializer_1, 'com.fasterxml.jackson.databind.deser.std.StringArrayDeserializer').
class_name(d4j_jacksondatabind_13, default_deserialization_context_1, 'com.fasterxml.jackson.databind.deser.DefaultDeserializationContext').
class_name(d4j_jacksondatabind_13, object_id_value_property_1, 'com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty').
class_name(d4j_jacksondatabind_36, std_date_format_1, 'com.fasterxml.jackson.databind.util.StdDateFormat').
class_name(d4j_jacksondatabind_80, std_subtype_resolver_1, 'com.fasterxml.jackson.databind.jsontype.impl.StdSubtypeResolver').
class_name(d4j_jacksondatabind_93, sub_type_validator_1, 'com.fasterxml.jackson.databind.jsontype.impl.SubTypeValidator').
class_name(d4j_jacksondatabind_95, type_factory_1, 'com.fasterxml.jackson.databind.type.TypeFactory').
class_name(d4j_jacksondatabind_95, type_parser_1, 'com.fasterxml.jackson.databind.type.TypeParser').
class_name(d4j_jacksondatabind_107, type_deserializer_base_1, 'com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase').
class_name(d4j_jsoup_8, node_1, 'org.jsoup.nodes.Node').
class_name(d4j_jsoup_22, node_1, 'org.jsoup.nodes.Node').
class_name(d4j_jsoup_22, element_1, 'org.jsoup.nodes.Element').
class_name(d4j_jsoup_26, cleaner_1, 'org.jsoup.safety.Cleaner').
class_name(d4j_jsoup_66, element_1, 'org.jsoup.nodes.Element').
class_name(d4j_jsoup_89, attribute_1, 'org.jsoup.nodes.Attribute').
class_name(d4j_lang_20, string_utils_1, 'org.apache.commons.lang3.StringUtils').
class_name(d4j_lang_33, class_utils_1, 'org.apache.commons.lang3.ClassUtils').
class_name(d4j_lang_39, string_utils_1, 'org.apache.commons.lang3.StringUtils').
class_name(d4j_lang_47, str_builder_1, 'org.apache.commons.lang.text.StrBuilder').
class_name(d4j_lang_57, locale_utils_1, 'org.apache.commons.lang.LocaleUtils').
class_name(d4j_math_4, sub_line_1, 'org.apache.commons.math3.geometry.euclidean.threed.SubLine').
class_name(d4j_math_4, sub_line_2, 'org.apache.commons.math3.geometry.euclidean.twod.SubLine').
class_name(d4j_math_70, bisection_solver_1, 'org.apache.commons.math.analysis.solvers.BisectionSolver').
class_name(d4j_math_79, math_utils_1, 'org.apache.commons.math.util.MathUtils').
class_name(d4j_mockito_18, returns_empty_values_1, 'org.mockito.internal.stubbing.defaultanswers.ReturnsEmptyValues').
class_name(d4j_mockito_38, argument_matching_tool_1, 'org.mockito.internal.verification.argumentmatching.ArgumentMatchingTool').

