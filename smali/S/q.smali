.class public final LS/q;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LS/t;

.field public b:LNc/B;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LS/t;

.field public e:I


# direct methods
.method public constructor <init>(LS/t;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LS/q;->d:LS/t;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LS/q;->c:Ljava/lang/Object;

    iget p1, p0, LS/q;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LS/q;->e:I

    iget-object p1, p0, LS/q;->d:LS/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LS/t;->a(LNc/B;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
