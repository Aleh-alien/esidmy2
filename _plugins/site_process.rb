module Jekyll
  class Site
    def process
      self.reset
      self.read
      self.generate
      self.render
      
      # these must come after render
      self.generate_categories

      self.cleanup
      self.write
      
    end
  end
end
