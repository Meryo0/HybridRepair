package logicfl.logic;

import java.util.Arrays;
import java.util.List;

import logicfl.logic.codefacts.Line;

/**
 * method_invoc/3 predicate.
 *
 * method_invoc(?invoc_expr, ?method_id, ?line:Line).
 *
 * invoc_expr: the expression of the method invocation.
 * method_id: the method id of the callee.
 * line: the line which the method is invoked.
 */
public class MethodInvoc extends Predicate {

    private String invocExpr;
    private String methodId;
    private Line line;

    /**
     * method_invoc(?invoc_expr, ?method_id, ?line:Line).
     * @param invocExpr invoc_expr is the entire expression of the method invocation.
     * @param methodId method id
     * @param line line
     */
    public MethodInvoc(String invocExpr, String methodId, Line line) {
        this.invocExpr = invocExpr;
        this.methodId = methodId;
        this.line = line;
    }

    public String getInvocExpr() {
        return invocExpr;
    }

    public String getMethodId() {
        return methodId;
    }

    public Line getLine() {
        return line;
    }

    @Override
    public String getPredicateName() {
        return "method_invoc";
    }

    @Override
    public List<String> arguments() {
        return Arrays.asList(invocExpr, methodId, line.toString());
    }
}
