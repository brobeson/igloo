#ifndef IGLOO_SHADER_H
#define IGLOO_SHADER_H

namespace igloo {
class shader {
public:
  [[nodiscard]] int id() const noexcept;

private:
  int m_id{0};
};
} // namespace igloo

#endif