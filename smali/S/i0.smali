.class public final LS/i0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LS/k0;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LS/k0;

.field public d:I


# direct methods
.method public constructor <init>(LS/k0;Lkb/c;)V
    .locals 0

    iput-object p1, p0, LS/i0;->c:LS/k0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, LS/i0;->b:Ljava/lang/Object;

    iget p1, p0, LS/i0;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LS/i0;->d:I

    iget-object p1, p0, LS/i0;->c:LS/k0;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p0}, LS/k0;->c(JLkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
