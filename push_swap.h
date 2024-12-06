/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mokariou <mokariou@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/10 17:04:47 by mokariou          #+#    #+#             */
/*   Updated: 2024/11/12 12:38:36 by mokariou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PUSH_SWAP_H
# define PUSH_SWAP_H

# include <limits.h>
# include "libft/libft.h"
# include "printf/ft_printf.h"

typedef struct s_stack_node
{
	int					nbr;
	int					index;
	int					push_cost;
	int					above_median;
	int					cheapest;
	struct s_stack_node	*target_node;
	struct s_stack_node	*next;
	struct s_stack_node	*prev;
}	t_node;

void			sa(t_node **a, int print);
void			sb(t_node **b, int print);
void			ss(t_node **a, t_node **b, int print);
void			ra(t_node **a, int print);
void			rb(t_node **b, int print);
void			rr(t_node **a, t_node **b, int print);
void			rra(t_node **a, int print);
void			rrb(t_node **b, int print);
void			rrr(t_node **a, t_node **b, int print);
void			pa(t_node **a, t_node **b, int print);
void			pb(t_node **b, t_node **a, int print);
void			set_cheapest(t_node *stack);
//in and out
int				syntax(char *str_n);
int				error_dup(t_node *a, int n);
void			free_stack(t_node **stack);
void			free_errors(t_node **a);
void			init_stack_a(t_node **a, char **argv);
char			**split(char *s, char c);
void			init_nodes_a(t_node *a, t_node *b);
void			init_nodes_b(t_node *a, t_node *b);
void			current_index(t_node *stack);
t_node			*get_cheapest(t_node *stack);
void			prep_for_push(t_node **s, t_node *n, char c);
void			move_b_to_a(t_node **a, t_node **b);
void			move_a_to_b(t_node **a, t_node **b);
int				stack_len(t_node *stack);
t_node			*find_last(t_node *stack);
int				is_sorted(t_node *stack);
t_node			*find_min(t_node *stack);
t_node			*find_max(t_node *stack);
void			bring_on_top(t_node **a);

void			sort_three(t_node **a);
void			sort_opera(t_node **a, t_node **b);

#endif
