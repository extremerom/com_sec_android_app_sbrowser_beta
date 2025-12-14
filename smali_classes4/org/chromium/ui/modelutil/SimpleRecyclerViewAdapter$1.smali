.class Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modelutil/ListObservable$ListObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/ui/modelutil/ListObservable$ListObserver<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;


# virtual methods
.method public onItemRangeInserted(Lorg/chromium/ui/modelutil/ListObservable;II)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$1;->this$0:Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;

    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/u0;->notifyItemRangeInserted(II)V

    return-void
.end method
