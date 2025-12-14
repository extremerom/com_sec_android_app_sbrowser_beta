.class public final LZ5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY5/b;


# instance fields
.field public final a:Lo3/f;


# direct methods
.method public constructor <init>(Lo3/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ5/e;->a:Lo3/f;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LZ5/e;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, LZ5/e;

    iget-object p0, p0, LZ5/e;->a:Lo3/f;

    iget-object p1, p1, LZ5/e;->a:Lo3/f;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LZ5/e;->a:Lo3/f;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onChannelClosed(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 0

    invoke-static {p1}, LN5/d;->e(Lcom/google/android/gms/wearable/Channel;)Lcom/google/android/gms/wearable/internal/zzbq;

    move-result-object p1

    iget-object p0, p0, LZ5/e;->a:Lo3/f;

    iget-object p0, p0, Lo3/f;->b:Ljava/lang/Object;

    check-cast p0, LY5/i;

    invoke-virtual {p0, p1, p2, p3}, LY5/i;->onChannelClosed(Lcom/google/android/gms/wearable/ChannelClient$Channel;II)V

    return-void
.end method

.method public final onChannelOpened(Lcom/google/android/gms/wearable/Channel;)V
    .locals 0

    invoke-static {p1}, LN5/d;->e(Lcom/google/android/gms/wearable/Channel;)Lcom/google/android/gms/wearable/internal/zzbq;

    move-result-object p1

    iget-object p0, p0, LZ5/e;->a:Lo3/f;

    iget-object p0, p0, Lo3/f;->b:Ljava/lang/Object;

    check-cast p0, LY5/i;

    invoke-virtual {p0, p1}, LY5/i;->onChannelOpened(Lcom/google/android/gms/wearable/ChannelClient$Channel;)V

    return-void
.end method

.method public final onInputClosed(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 0

    invoke-static {p1}, LN5/d;->e(Lcom/google/android/gms/wearable/Channel;)Lcom/google/android/gms/wearable/internal/zzbq;

    move-result-object p1

    iget-object p0, p0, LZ5/e;->a:Lo3/f;

    iget-object p0, p0, Lo3/f;->b:Ljava/lang/Object;

    check-cast p0, LY5/i;

    invoke-virtual {p0, p1, p2, p3}, LY5/i;->onInputClosed(Lcom/google/android/gms/wearable/ChannelClient$Channel;II)V

    return-void
.end method

.method public final onOutputClosed(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 0

    invoke-static {p1}, LN5/d;->e(Lcom/google/android/gms/wearable/Channel;)Lcom/google/android/gms/wearable/internal/zzbq;

    move-result-object p1

    iget-object p0, p0, LZ5/e;->a:Lo3/f;

    iget-object p0, p0, Lo3/f;->b:Ljava/lang/Object;

    check-cast p0, LY5/i;

    invoke-virtual {p0, p1, p2, p3}, LY5/i;->onOutputClosed(Lcom/google/android/gms/wearable/ChannelClient$Channel;II)V

    return-void
.end method
