/* This file was generated by SableCC (http://www.sablecc.org/). 
 * Then modified.
 */

package ast.node;

import ast.visitor.*;

@SuppressWarnings("nls")
public final class ArrayAssignStatement extends IStatement
{
    private IdLiteral _idlit_;
    private IExp _index_;
    private IExp _exp_;

    public ArrayAssignStatement(int _line_, int _pos_, 
            IdLiteral _idlit_, IExp _index_, IExp _exp_)
    {
        super(_line_, _pos_);

        setIdLit(_idlit_);

        setIndex(_index_);

        setExp(_exp_);

    }
    
    @Override
    public int getNumExpChildren() { return 3; }
    
    @Override
    public Object clone()
    {
        return new ArrayAssignStatement(
            this.getLine(),
            this.getPos(),
            cloneNode(this._idlit_),
            cloneNode(this._index_),
            cloneNode(this._exp_));
    }

    public void accept(Visitor v)
    {
        v.visitArrayAssignStatement(this);
    }

    public IdLiteral getIdLit()
    {
        return this._idlit_;
    }

    public void setIdLit(IdLiteral node)
    {
        if(this._idlit_ != null)
        {
            this._idlit_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._idlit_ = node;
    }

    public IExp getIndex()
    {
        return this._index_;
    }

    public void setIndex(IExp node)
    {
        if(this._index_ != null)
        {
            this._index_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._index_ = node;
    }

    public IExp getExp()
    {
        return this._exp_;
    }

    public void setExp(IExp node)
    {
        if(this._exp_ != null)
        {
            this._exp_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._exp_ = node;
    }

    @Override
    void removeChild(Node child)
    {
        // Remove child
        if(this._idlit_ == child)
        {
            this._idlit_ = null;
            return;
        }

        if(this._index_ == child)
        {
            this._index_ = null;
            return;
        }

        if(this._exp_ == child)
        {
            this._exp_ = null;
            return;
        }

        throw new RuntimeException("Not a child.");
    }

    @Override
    void replaceChild(Node oldChild, Node newChild)
    {
        // Replace child
        if(this._idlit_ == oldChild)
        {
            setIdLit((IdLiteral) newChild);
            return;
        }

        if(this._index_ == oldChild)
        {
            setIndex((IExp) newChild);
            return;
        }

        if(this._exp_ == oldChild)
        {
            setExp((IExp) newChild);
            return;
        }

        throw new RuntimeException("Not a child.");
    }
}