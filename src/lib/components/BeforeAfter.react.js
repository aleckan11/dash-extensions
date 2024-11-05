import React from 'react';
import PropTypes from 'prop-types';
import {ImgComparisonSlider} from '@img-comparison-slider/react';

/**
 * Before After Image Slider based on https://github.com/sneas/img-comparison-slider
 */
const BeforeAfter = props => {
    const {
        id,
        before,
        after,
        width,
        height,
        hover,
        value,
        direction,
        keyboard,
    } = props;

    return (
        <div id={id}>
            <ImgComparisonSlider
                hover={hover}
                value={value}
                direction={direction}
                keyboard={keyboard}
            >
                <img
                    slot="first"
                    width={width}
                    height={height}
                    {...before}
                />
                <img
                    slot="second"
                    width={width}
                    height={height}
                    {...after}
                />
            </ImgComparisonSlider>
        </div>
    );
};


BeforeAfter.defaultProps = {
    width: '100%',
    height: 'auto',
    hover: true,
    value: 50,
    direction: 'horizontal',
    keyboard: 'enabled',
};

BeforeAfter.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks
     */
    id: PropTypes.string,

    /**
     *  Image height - default "auto" for responsive images
     */
    height: PropTypes.string,

    /**
     * Image width - default "100%" for responsive images
     */
    width: PropTypes.string,

    /**
     * Automatic slide on mouse over
     */
    hover: PropTypes.bool,

    /**
     * The divider position can be specified as a percentage, i.e. 0 to 100
     */
    value: PropTypes.number,

    /**
     * Set slider direction
     */
    direction: PropTypes.oneOf(['horizontal', 'vertical']),

    /**
     * Enable/disable slider position control with the keyboard
     */
    keyboard: PropTypes.oneOf(['enabled', 'disabled']),

    /**
     * Props for the `before` Img component. eg {"src": "/assets/lena_bw.png"}
     */
    before: PropTypes.object,

    /**
     *  Props for the `after` Img component. eg {"src": "/assets/lena_color.png"}
     */
    after: PropTypes.object,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func,
};

export default BeforeAfter;
