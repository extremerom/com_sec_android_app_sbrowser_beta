.class public final La0/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lub/a;


# instance fields
.field public final a:La0/w0;

.field public final b:I

.field public final c:La0/d;


# direct methods
.method public constructor <init>(La0/w0;ILa0/M;La0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/I0;->a:La0/w0;

    iput p2, p0, La0/I0;->b:I

    iput-object p4, p0, La0/I0;->c:La0/d;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 4

    new-instance v0, La0/L;

    iget-object v1, p0, La0/I0;->c:La0/d;

    iget-object v2, p0, La0/I0;->a:La0/w0;

    iget p0, p0, La0/I0;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3, v1}, La0/L;-><init>(La0/w0;ILa0/M;La0/d;)V

    return-object v0
.end method
