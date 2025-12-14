.class public final Lic/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Lic/z;

.field public b:Landroidx/datastore/preferences/protobuf/e;

.field public c:I


# direct methods
.method public constructor <init>(Lic/B;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lic/z;

    invoke-direct {v0, p1}, Lic/z;-><init>(Lic/e;)V

    iput-object v0, p0, Lic/A;->a:Lic/z;

    invoke-virtual {v0}, Lic/z;->b()Lic/w;

    move-result-object v0

    new-instance v1, Landroidx/datastore/preferences/protobuf/e;

    invoke-direct {v1, v0}, Landroidx/datastore/preferences/protobuf/e;-><init>(Lic/w;)V

    iput-object v1, p0, Lic/A;->b:Landroidx/datastore/preferences/protobuf/e;

    iget p1, p1, Lic/B;->b:I

    iput p1, p0, Lic/A;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lic/A;->c:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lic/A;->b:Landroidx/datastore/preferences/protobuf/e;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/e;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lic/A;->a:Lic/z;

    invoke-virtual {v0}, Lic/z;->b()Lic/w;

    move-result-object v0

    new-instance v1, Landroidx/datastore/preferences/protobuf/e;

    invoke-direct {v1, v0}, Landroidx/datastore/preferences/protobuf/e;-><init>(Lic/w;)V

    iput-object v1, p0, Lic/A;->b:Landroidx/datastore/preferences/protobuf/e;

    :cond_0
    iget v0, p0, Lic/A;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lic/A;->c:I

    iget-object p0, p0, Lic/A;->b:Landroidx/datastore/preferences/protobuf/e;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e;->a()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
