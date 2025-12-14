.class public final LG5/p4;
.super LG5/m4;
.source "SourceFile"


# instance fields
.field public final synthetic c:LG5/a;


# direct methods
.method public constructor <init>(LG5/a;)V
    .locals 0

    iput-object p1, p0, LG5/p4;->c:LG5/a;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LG5/p4;->c:LG5/a;

    iget v0, p0, LG5/a;->e:I

    invoke-static {p1, v0}, LG5/E2;->d(II)V

    add-int/2addr p1, p1

    iget-object p0, p0, LG5/a;->d:[Ljava/lang/Object;

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

    iget-object p0, p0, LG5/p4;->c:LG5/a;

    iget p0, p0, LG5/a;->e:I

    return p0
.end method
