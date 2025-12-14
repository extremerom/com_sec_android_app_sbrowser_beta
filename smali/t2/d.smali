.class public final Lt2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LB0/r;


# instance fields
.field public final a:Lt2/e;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB0/r;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LB0/r;-><init>(I)V

    sput-object v0, Lt2/d;->c:LB0/r;

    return-void
.end method

.method public constructor <init>(Lt2/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/d;->a:Lt2/e;

    iput p2, p0, Lt2/d;->b:I

    return-void
.end method
