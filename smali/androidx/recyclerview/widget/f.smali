.class public final Landroidx/recyclerview/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/recyclerview/widget/i;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/i;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/f;->d:Landroidx/recyclerview/widget/i;

    iput-object p2, p0, Landroidx/recyclerview/widget/f;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/List;

    iput p4, p0, Landroidx/recyclerview/widget/f;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroidx/recyclerview/widget/e;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/e;-><init>(Landroidx/recyclerview/widget/f;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/d;->a(Landroidx/recyclerview/widget/x;)Landroidx/recyclerview/widget/z;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->d:Landroidx/recyclerview/widget/i;

    iget-object v1, v1, Landroidx/recyclerview/widget/i;->c:Landroidx/recyclerview/widget/h;

    new-instance v2, Landroidx/recyclerview/widget/o;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0, v0}, Landroidx/recyclerview/widget/o;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/h;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
