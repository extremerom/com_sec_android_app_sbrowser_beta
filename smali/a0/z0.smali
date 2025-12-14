.class public final La0/z0;
.super Lk0/t;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lk0/t;-><init>()V

    iput-object p1, p0, La0/z0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lk0/t;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord>"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La0/z0;

    iget-object p1, p1, La0/z0;->c:Ljava/lang/Object;

    iput-object p1, p0, La0/z0;->c:Ljava/lang/Object;

    return-void
.end method

.method public final b()Lk0/t;
    .locals 1

    new-instance v0, La0/z0;

    iget-object p0, p0, La0/z0;->c:Ljava/lang/Object;

    invoke-direct {v0, p0}, La0/z0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
