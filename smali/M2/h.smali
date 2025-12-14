.class public abstract LM2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS2/c;


# instance fields
.field public final a:LT2/a;

.field public final b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(LT2/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM2/h;->a:LT2/a;

    iput-object p2, p0, LM2/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean p0, p0, LM2/h;->c:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x15

    const-string v0, "statement is closed"

    invoke-static {p0, v0}, LG5/j2;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
