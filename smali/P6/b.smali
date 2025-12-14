.class public abstract LP6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:LX4/i;


# direct methods
.method public static final a(JLLc/c;LLc/c;)J
    .locals 1

    const-string v0, "sourceUnit"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetUnit"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, LLc/c;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object p3

    invoke-virtual {p2}, LLc/c;->a()Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {p3, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final b([Ljava/lang/Enum;)Llb/b;
    .locals 1

    const-string v0, "entries"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Llb/b;

    invoke-direct {v0, p0}, Llb/b;-><init>([Ljava/lang/Enum;)V

    return-object v0
.end method

.method public static final c(Landroid/view/View;Landroidx/activity/B;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b0e1e

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
