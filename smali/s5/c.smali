.class public final Ls5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ls5/c;


# instance fields
.field public final a:La0/J0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls5/c;

    invoke-direct {v0}, Ls5/c;-><init>()V

    const-class v1, Ls5/c;

    monitor-enter v1

    :try_start_0
    sput-object v0, Ls5/c;->b:Ls5/c;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La0/J0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La0/J0;-><init>(I)V

    iput-object v0, p0, Ls5/c;->a:La0/J0;

    return-void
.end method
