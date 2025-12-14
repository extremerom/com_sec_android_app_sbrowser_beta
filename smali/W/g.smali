.class public final LW/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public d:Li0/a;

.field public final synthetic e:LW/h;


# direct methods
.method public constructor <init>(LW/h;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LW/g;->e:LW/h;

    iput-object p3, p0, LW/g;->a:Ljava/lang/Object;

    iput-object p4, p0, LW/g;->b:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, La0/V;->f:La0/V;

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LW/g;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method
