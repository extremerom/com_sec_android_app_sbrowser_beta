.class public final LRc/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/h;


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final synthetic b:Lib/h;


# direct methods
.method public constructor <init>(Lib/h;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LRc/B;->a:Ljava/lang/Throwable;

    iput-object p1, p0, LRc/B;->b:Lib/h;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LRc/B;->b:Lib/h;

    invoke-interface {p0, p1, p2}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lib/g;)Lib/f;
    .locals 0

    iget-object p0, p0, LRc/B;->b:Lib/h;

    invoke-interface {p0, p1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p0

    return-object p0
.end method

.method public final minusKey(Lib/g;)Lib/h;
    .locals 0

    iget-object p0, p0, LRc/B;->b:Lib/h;

    invoke-interface {p0, p1}, Lib/h;->minusKey(Lib/g;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lib/h;)Lib/h;
    .locals 0

    iget-object p0, p0, LRc/B;->b:Lib/h;

    invoke-interface {p0, p1}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    return-object p0
.end method
