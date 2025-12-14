.class public final LE5/g;
.super LE5/d;
.source "SourceFile"


# instance fields
.field public final synthetic c:LE5/h;


# direct methods
.method public constructor <init>(LE5/h;)V
    .locals 0

    iput-object p1, p0, LE5/g;->c:LE5/h;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LE5/g;->c:LE5/h;

    iget v0, p0, LE5/h;->e:I

    invoke-static {p1, v0}, LG5/l2;->g(II)V

    add-int/2addr p1, p1

    iget-object p0, p0, LE5/h;->d:[Ljava/lang/Object;

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, LE5/g;->c:LE5/h;

    iget p0, p0, LE5/h;->e:I

    return p0
.end method
