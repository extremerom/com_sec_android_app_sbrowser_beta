.class public final Lfd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldd/c;


# direct methods
.method public constructor <init>(Lbd/d;)V
    .locals 10

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldd/c;

    new-instance v9, Lfd/c;

    const-class v4, Lfd/d;

    const-string v5, "readIfAbsent"

    const/4 v2, 0x2

    const-string v6, "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lfd/c;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct {v0, p1, v9}, Ldd/c;-><init>(Lbd/d;Lfd/c;)V

    iput-object v0, p0, Lfd/d;->a:Ldd/c;

    return-void
.end method
