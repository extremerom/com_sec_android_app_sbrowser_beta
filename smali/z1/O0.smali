.class public final Lz1/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lz1/O0;


# instance fields
.field public final a:[J

.field public final b:[Landroid/widget/RemoteViews;

.field public final c:Z

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lz1/O0;

    const/4 v1, 0x0

    new-array v2, v1, [J

    new-array v3, v1, [Landroid/widget/RemoteViews;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lz1/O0;-><init>([J[Landroid/widget/RemoteViews;ZI)V

    sput-object v0, Lz1/O0;->e:Lz1/O0;

    return-void
.end method

.method public constructor <init>([J[Landroid/widget/RemoteViews;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/O0;->a:[J

    iput-object p2, p0, Lz1/O0;->b:[Landroid/widget/RemoteViews;

    iput-boolean p3, p0, Lz1/O0;->c:Z

    iput p4, p0, Lz1/O0;->d:I

    array-length p1, p1

    array-length p3, p2

    if-ne p1, p3, :cond_3

    const/4 p1, 0x1

    if-lt p4, p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    array-length p3, p2

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object v0, p2, p4

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lfb/n;->y(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    iget p0, p0, Lz1/O0;->d:I

    if-gt p1, p0, :cond_1

    return-void

    :cond_1
    const-string p2, "View type count is set to "

    const-string p3, ", but the collection contains "

    const-string p4, " different layout ids"

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View type count must be >= 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RemoteCollectionItems has different number of ids and views"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
