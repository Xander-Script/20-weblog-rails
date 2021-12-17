module.exports = {
    syntax: 'postcss-scss',
    parser: 'postcss-scss',
    plugins: [
        require('postcss-import'),
        require('tailwindcss/nesting'),
        require('tailwindcss'),
        require('postcss-nesting'),
        require('autoprefixer'),
    ],
}
