.class public final Landroidx/recyclerview/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Landroidx/recyclerview/widget/h;


# instance fields
.field public final a:Landroidx/recyclerview/widget/c;

.field public final b:Landroidx/recyclerview/widget/x1;

.field public final c:Landroidx/recyclerview/widget/h;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/h;

    invoke-direct {v0}, Landroidx/recyclerview/widget/h;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/i;->h:Landroidx/recyclerview/widget/h;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/c;Landroidx/recyclerview/widget/x1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/i;->f:Ljava/util/List;

    iput-object p1, p0, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/c;

    iput-object p2, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/x1;

    sget-object p1, Landroidx/recyclerview/widget/i;->h:Landroidx/recyclerview/widget/h;

    iput-object p1, p0, Landroidx/recyclerview/widget/i;->c:Landroidx/recyclerview/widget/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/g;

    iget-object v2, p0, Landroidx/recyclerview/widget/i;->f:Ljava/util/List;

    check-cast v1, Landroidx/recyclerview/widget/g0;

    iget-object v1, v1, Landroidx/recyclerview/widget/g0;->a:Landroidx/recyclerview/widget/h0;

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/h0;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method
