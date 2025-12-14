.class public Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mBinder:Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder<",
            "Lorg/chromium/ui/modelutil/PropertyModel;",
            "Landroid/view/View;",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMcp:Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor<",
            "Lorg/chromium/ui/modelutil/PropertyModel;",
            "Landroid/view/View;",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            ">;"
        }
    .end annotation
.end field

.field public model:Lorg/chromium/ui/modelutil/PropertyModel;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder<",
            "Lorg/chromium/ui/modelutil/PropertyModel;",
            "Landroid/view/View;",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;->mBinder:Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;

    return-void
.end method


# virtual methods
.method public setModel(Lorg/chromium/ui/modelutil/PropertyModel;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;->mCurrentMcp:Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;->destroy()V

    :cond_0
    iput-object p1, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;->mBinder:Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;

    invoke-static {p1, v0, v1}, Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;->create(Lorg/chromium/ui/modelutil/PropertyObservable;Ljava/lang/Object;Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;)Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;->mCurrentMcp:Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;

    return-void
.end method
