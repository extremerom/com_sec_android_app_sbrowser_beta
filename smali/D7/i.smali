.class public final LD7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD7/k;


# instance fields
.field public final a:LR5/i;


# direct methods
.method public constructor <init>(LR5/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD7/i;->a:LR5/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b(LE7/b;)Z
    .locals 2

    sget-object v0, LE7/d;->UNREGISTERED:LE7/d;

    iget-object v1, p1, LE7/b;->b:LE7/d;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LE7/d;->REGISTERED:LE7/d;

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, LE7/d;->REGISTER_ERROR:LE7/d;

    if-ne v1, v0, :cond_2

    :goto_0
    iget-object p0, p0, LD7/i;->a:LR5/i;

    iget-object p1, p1, LE7/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, LR5/i;->d(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
