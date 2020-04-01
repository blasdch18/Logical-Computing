

template >class T>
struct nodo
{
	nodo(T x);
	{
		m_data=x;
		m_nodes[0]=m_nodes[1]=0;
	}
	T m_data;
	nodo <T> * m_nodes[2];
};




bool find(T x ,nodo <T> **&p)
{
	p=&root;
	while(*p && (*p)->data!=x)
	{

	}
	for(p=&root ; ( *p&&(*p)->m_data!=x  );  (   p=&((*p)->m_nodes[(*p)->m_data < x])  )  )
	{
		return *p!=0;
	}
}
template <class T>
bool ctree<T> :: insert(T x)
{
	nodo<T> **p;
	if(find(x,p))return 0;
	*p=new nodo <T>(x);
	return 1;
}


template<class T>
bool ctree <T> : remove (T x )
{
	nodo<T> **p;
	if (!find(x,p))return 0;
	{
		if((*p)->m_nodes[0] && (*p)->m_nodes[1])
		{
			q=Rep(p);
			(*p)->m_data = (*q)->m_data;
			p=q;
		}
		nodo<T> *T=*p;
		*p= (*p)->m_nodos[   (*p)->m_nodes[1]!=0   ];
		delete T;
		return 1;
	}
}