defmodule Swift4Shop.ImageGallery do
  @derive Jason.Encoder
  defstruct ImageGalleryID: nil,
            ImageGalleryFile: "",
            ImageGalleryCaption: "",
            ImageGallerySorting: nil
end
