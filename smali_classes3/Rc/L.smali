.class public final LRc/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/c;
.implements Lkb/d;


# instance fields
.field public final a:Lib/c;

.field public final b:Lib/h;


# direct methods
.method public constructor <init>(Lib/c;Lib/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRc/L;->a:Lib/c;

    iput-object p2, p0, LRc/L;->b:Lib/h;

    return-void
.end method


# virtual methods
.method public final getCallerFrame()Lkb/d;
    .locals 1

    iget-object p0, p0, LRc/L;->a:Lib/c;

    instance-of v0, p0, Lkb/d;

    if-eqz v0, :cond_0

    check-cast p0, Lkb/d;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lib/h;
    .locals 0

    iget-object p0, p0, LRc/L;->b:Lib/h;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LRc/L;->a:Lib/c;

    invoke-interface {p0, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
