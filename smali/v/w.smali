.class public final Lv/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appsearch/safeparcel/PackageIdentifierParcel;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/appsearch/safeparcel/PackageIdentifierParcel;

    invoke-direct {v0, p1, p2}, Landroidx/appsearch/safeparcel/PackageIdentifierParcel;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lv/w;->a:Landroidx/appsearch/safeparcel/PackageIdentifierParcel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lv/w;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lv/w;

    iget-object p1, p1, Lv/w;->a:Landroidx/appsearch/safeparcel/PackageIdentifierParcel;

    iget-object p0, p0, Lv/w;->a:Landroidx/appsearch/safeparcel/PackageIdentifierParcel;

    invoke-virtual {p0, p1}, Landroidx/appsearch/safeparcel/PackageIdentifierParcel;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lv/w;->a:Landroidx/appsearch/safeparcel/PackageIdentifierParcel;

    invoke-virtual {p0}, Landroidx/appsearch/safeparcel/PackageIdentifierParcel;->hashCode()I

    move-result p0

    return p0
.end method
