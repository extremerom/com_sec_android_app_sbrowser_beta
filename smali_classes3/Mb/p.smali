.class public final LMb/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LMb/r;


# direct methods
.method public synthetic constructor <init>(LMb/r;I)V
    .locals 0

    iput p2, p0, LMb/p;->a:I

    iput-object p1, p0, LMb/p;->b:LMb/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LMb/p;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lhc/f;

    iget-object p0, p0, LMb/p;->b:LMb/r;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LMb/r;->i()Lrc/o;

    move-result-object v0

    sget-object v1, LRb/c;->FOR_NON_TRACKED_SCOPE:LRb/c;

    invoke-interface {v0, p1, v1}, Lrc/o;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LMb/r;->j(Lhc/f;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x4

    invoke-static {p0}, LMb/r;->h(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p1, Lhc/f;

    iget-object p0, p0, LMb/p;->b:LMb/r;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LMb/r;->i()Lrc/o;

    move-result-object v0

    sget-object v1, LRb/c;->FOR_NON_TRACKED_SCOPE:LRb/c;

    invoke-interface {v0, p1, v1}, Lrc/o;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LMb/r;->j(Lhc/f;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x8

    invoke-static {p0}, LMb/r;->h(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
