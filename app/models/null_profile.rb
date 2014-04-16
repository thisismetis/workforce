class NullProfile

  def to_partial_path
    "profiles/null"
  end

  def exists?
    false
  end
end
