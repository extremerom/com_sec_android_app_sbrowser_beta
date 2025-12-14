.class public abstract synthetic La0/B0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LZ3/x;

.field public static final b:LZ3/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ3/x;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LZ3/x;-><init>(I)V

    sput-object v0, La0/B0;->a:LZ3/x;

    new-instance v0, LZ3/x;

    invoke-direct {v0, v1}, LZ3/x;-><init>(I)V

    sput-object v0, La0/B0;->b:LZ3/x;

    return-void
.end method
