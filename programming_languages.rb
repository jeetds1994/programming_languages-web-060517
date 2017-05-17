def reformat_languages(languages)
  # your code here

=begin
  languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
=end
  newHash = Hash.new
  languages.each do |x, y|
    y.each do |n, m|
      a = m
      if n.to_s == "javascript"
        b = {:style => [x, :oo]}
        newHash[n]= a.merge(b)
      else
        b = {:style => [x]}
        newHash[n] = a.merge(b)
      end
    end
  end
  newHash
end
