.class public abstract La0/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La0/T;


# direct methods
.method public constructor <init>(Lsb/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La0/T;

    invoke-direct {v0, p1}, La0/T;-><init>(Lsb/a;)V

    iput-object v0, p0, La0/g0;->a:La0/T;

    return-void
.end method


# virtual methods
.method public final a(La0/h0;La0/N0;)La0/N0;
    .locals 2

    instance-of p0, p2, La0/J;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, La0/h0;->d:Z

    if-eqz p0, :cond_2

    move-object v0, p2

    check-cast v0, La0/J;

    iget-object p0, v0, La0/J;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, La0/h0;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of p0, p2, La0/M0;

    if-eqz p0, :cond_2

    iget-boolean p0, p1, La0/h0;->b:Z

    if-nez p0, :cond_1

    iget-object p0, p1, La0/h0;->e:Ljava/lang/Object;

    if-eqz p0, :cond_2

    :cond_1
    iget-boolean p0, p1, La0/h0;->d:Z

    if-nez p0, :cond_2

    invoke-virtual {p1}, La0/h0;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p2, La0/M0;

    iget-object v1, p2, La0/M0;->a:Ljava/lang/Object;

    invoke-static {p0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v0, p2

    :cond_2
    :goto_0
    if-nez v0, :cond_5

    iget-boolean p0, p1, La0/h0;->d:Z

    if-eqz p0, :cond_4

    new-instance p0, La0/J;

    iget-object p2, p1, La0/h0;->c:La0/A0;

    if-nez p2, :cond_3

    sget-object p2, La0/V;->f:La0/V;

    :cond_3
    iget-object p1, p1, La0/h0;->e:Ljava/lang/Object;

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    invoke-direct {p0, p1}, La0/J;-><init>(Landroidx/compose/runtime/ParcelableSnapshotMutableState;)V

    :goto_1
    move-object v0, p0

    goto :goto_2

    :cond_4
    new-instance p0, La0/M0;

    invoke-virtual {p1}, La0/h0;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, La0/M0;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method
