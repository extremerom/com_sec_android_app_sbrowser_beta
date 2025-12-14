.class public final La0/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/N0;


# instance fields
.field public final a:Ldb/o;


# direct methods
.method public constructor <init>(Lsb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, La0/T;->a:Ldb/o;

    return-void
.end method


# virtual methods
.method public final a(La0/e0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La0/T;->a:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
