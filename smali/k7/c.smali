.class public abstract Lk7/c;
.super Lk7/f;
.source "SourceFile"


# instance fields
.field public final e:Ll7/a;


# direct methods
.method public constructor <init>(Lk7/n;Lk7/p;Lk7/k;Lk7/l;Ll7/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lk7/f;-><init>(Lk7/n;Lk7/p;Lk7/k;Lk7/l;)V

    if-eqz p5, :cond_0

    iput-object p5, p0, Lk7/c;->e:Ll7/a;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "cst == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk7/c;->e:Ll7/a;

    invoke-interface {p0}, Ln7/h;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
