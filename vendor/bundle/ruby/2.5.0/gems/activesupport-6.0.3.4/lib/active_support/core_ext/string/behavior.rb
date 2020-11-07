# coding: utf-8
# frozen_string_literal: true

class String
  # Enables more predictable duck-typing on String-like classes. See <tt>Object#acts_like?</tt>.
  # これがダックタイプ
  def acts_like_string?
    true
  end
end
