defmodule Swift4Shop.Question do
  @derive Jason.Encoder
  defstruct QuestionAnswerIndexID: nil,
            OrderID: nil,
            QuestionID: nil,
            QuestionTitle: "",
            QuestionAnswer: "",
            QuestionType: "",
            QuestionCheckoutStep: nil,
            QuestionSorting: nil,
            QuestionDiscountGroup: nil
end
