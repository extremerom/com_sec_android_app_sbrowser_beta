.class public abstract LEc/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LEc/e;


# instance fields
.field public final a:Lsb/k;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsb/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEc/x;->a:Lsb/k;

    const-string p1, "must return "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LEc/x;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(LUb/g;)Z
    .locals 1

    iget-object v0, p1, LMb/v;->h:Lyc/w;

    iget-object p0, p0, LEc/x;->a:Lsb/k;

    invoke-static {p1}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object p1

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b(LUb/g;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, LG5/t2;->d(LEc/e;LUb/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LEc/x;->b:Ljava/lang/String;

    return-object p0
.end method
