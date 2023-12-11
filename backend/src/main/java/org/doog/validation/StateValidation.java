package org.doog.validation;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.doog.anno.State;

public class StateValidation implements ConstraintValidator<State,String> {
    /**
     *
     * @param value 要校验的数据
     * @param constraintValidatorContext
     * @return
     */
    @Override
    public boolean isValid(String value, ConstraintValidatorContext constraintValidatorContext) {
        if (value ==null) return false;
        return value.equals("已发布") || value.equals("草稿");
    }
}
