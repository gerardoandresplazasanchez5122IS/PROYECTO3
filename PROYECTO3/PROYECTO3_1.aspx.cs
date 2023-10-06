using System;
using System.Web.UI.WebControls;

namespace CalculatorDemo
{
    public partial class Calculator : System.Web.UI.Page
    {
        private static string currentInput = string.Empty;
        private static double result = 0;
        private static string currentOperator = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Number_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            currentInput += button.Text;
            txtResult.Text = currentInput;
        }

        protected void Operator_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            if (!string.IsNullOrEmpty(currentInput))
            {
                double inputValue = double.Parse(currentInput);
                if (result == 0)
                {
                    result = inputValue;
                }
                else
                {
                    PerformCalculation();
                }
                currentInput = string.Empty;
                currentOperator = button.Text;


                lblResult.Text = result.ToString();
            }
            else
            {
                if (!string.IsNullOrEmpty(currentOperator))
                {
                    currentOperator = button.Text;
                }
            }
        }

        protected void Decimal_Click(object sender, EventArgs e)
        {
            if (!currentInput.Contains("."))
            {
                currentInput += ".";
                txtResult.Text = currentInput;
            }
        }

        protected void btnEqual_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(currentInput) && !string.IsNullOrEmpty(currentOperator))
            {
                double inputValue = double.Parse(currentInput);
                PerformCalculation();
                currentInput = result.ToString();
                currentOperator = string.Empty;


                lblResult.Text = result.ToString();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            currentInput = string.Empty;
            result = 0;
            currentOperator = string.Empty;
            txtResult.Text = string.Empty;


            lblResult.Text = string.Empty;
        }

        private void PerformCalculation()
        {
            double inputValue = double.Parse(currentInput);
            switch (currentOperator)
            {
                case "+":
                    result += inputValue;
                    break;
                case "-":
                    result -= inputValue;
                    break;
                case "*":
                    result *= inputValue;
                    break;
                case "/":
                    if (inputValue != 0)
                    {
                        result /= inputValue;
                    }
                    else
                    {

                        lblResult.Text = "Error: División por cero";
                    }
                    break;
            }
        }
    }
}