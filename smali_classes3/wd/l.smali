.class public abstract Lwd/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/z;


# instance fields
.field private final delegate:Lwd/z;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwd/z;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd/l;->delegate:Lwd/z;

    return-void
.end method


# virtual methods
.method public final -deprecated_delegate()Lwd/z;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lwd/l;->delegate:Lwd/z;

    return-object p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lwd/l;->delegate:Lwd/z;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final delegate()Lwd/z;
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lwd/l;->delegate:Lwd/z;

    return-object p0
.end method

.method public read(Lwd/g;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwd/l;->delegate:Lwd/z;

    invoke-interface {p0, p1, p2, p3}, Lwd/z;->read(Lwd/g;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public timeout()Lwd/B;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lwd/l;->delegate:Lwd/z;

    invoke-interface {p0}, Lwd/z;->timeout()Lwd/B;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lwd/l;->delegate:Lwd/z;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
