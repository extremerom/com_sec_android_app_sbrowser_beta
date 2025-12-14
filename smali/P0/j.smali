.class public final LP0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Ljava/util/ArrayList;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LP0/j;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, LP0/j;->c:I

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, LP0/u;->g:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-nez v2, :cond_0

    iget v3, p0, LP0/j;->a:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, LP0/j;->a:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v3, p0, LP0/j;->c:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, LP0/j;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const-string v4, "layout"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, LP0/r;

    invoke-direct {v3}, LP0/r;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, LP0/r;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lz7/d;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, LP0/j;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, LP0/j;->b:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, LP0/j;->c:I

    return-void
.end method


# virtual methods
.method public a(Lg7/g;)V
    .locals 0

    iget-object p0, p0, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lg7/g;->c:Lk7/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lg7/p;

    if-nez p0, :cond_1

    instance-of p0, p1, Lg7/q;

    if-eqz p0, :cond_0

    check-cast p1, Lg7/q;

    :cond_0
    return-void

    :cond_1
    check-cast p1, Lg7/p;

    const/4 p0, 0x0

    throw p0
.end method

.method public b(Lg7/g;)Lg7/i;
    .locals 3

    iget-object v0, p1, Lg7/g;->b:Lg7/i;

    iget-boolean v0, v0, Lg7/i;->e:Z

    iget-object v1, p1, Lg7/g;->d:Lk7/l;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lk7/l;->m(ZLjava/util/BitSet;)Lk7/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg7/g;->i(Lk7/l;)Lg7/g;

    move-result-object v0

    iget-object v1, p1, Lg7/g;->b:Lg7/i;

    invoke-virtual {p0, v0, v1}, LP0/j;->c(Lg7/g;Lg7/i;)Lg7/i;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ln7/c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No expanded opcode for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Ln7/d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
.end method

.method public c(Lg7/g;Lg7/i;)Lg7/i;
    .locals 2

    const/4 p0, -0x1

    :goto_0
    if-eqz p2, :cond_4

    iget-object v0, p2, Lg7/i;->d:LG5/v3;

    invoke-virtual {v0, p1}, LG5/v3;->k(Lg7/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lg7/j;->a:[Lg7/i;

    :goto_1
    iget p2, p2, Lg7/i;->c:I

    if-ne p2, p0, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    :try_start_0
    sget-object v1, Lg7/j;->a:[Lg7/i;

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    const/16 v1, 0xff

    if-lt p2, v1, :cond_2

    move-object p2, v0

    goto :goto_1

    :cond_2
    move-object p2, v0

    goto :goto_0

    :catch_0
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus opcode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-object p2
.end method
