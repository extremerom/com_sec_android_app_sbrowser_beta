.class public abstract Lkb/h;
.super Lkb/g;
.source "SourceFile"

# interfaces
.implements Ltb/h;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(ILib/c;)V
    .locals 0

    invoke-direct {p0, p2}, Lkb/g;-><init>(Lib/c;)V

    iput p1, p0, Lkb/h;->a:I

    return-void
.end method


# virtual methods
.method public final getArity()I
    .locals 0

    iget p0, p0, Lkb/h;->a:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkb/a;->getCompletion()Lib/c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ltb/x;->a:Ltb/y;

    invoke-virtual {v0, p0}, Ltb/y;->h(Ltb/h;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "renderLambdaToString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lkb/a;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
