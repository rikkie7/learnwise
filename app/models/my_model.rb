class MyModel
  ## Other code related to your model lives here

  def start_time
      self.my_related_model.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end
end
