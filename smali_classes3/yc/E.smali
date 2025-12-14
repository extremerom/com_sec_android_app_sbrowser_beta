.class public final Lyc/E;
.super Lyc/Q;
.source "SourceFile"


# instance fields
.field public final a:Lyc/A;


# direct methods
.method public constructor <init>(LGb/i;)V
    .locals 1

    const-string v0, "kotlinBuiltIns"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LGb/i;->p()Lyc/A;

    move-result-object p1

    iput-object p1, p0, Lyc/E;->a:Lyc/A;

    return-void
.end method


# virtual methods
.method public final a()Lyc/e0;
    .locals 0

    sget-object p0, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    return-object p0
.end method

.method public final b()Lyc/w;
    .locals 0

    iget-object p0, p0, Lyc/E;->a:Lyc/A;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d(Lzc/f;)Lyc/Q;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
