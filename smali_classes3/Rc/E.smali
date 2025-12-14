.class public final LRc/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/c;


# static fields
.field public static final a:LRc/E;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LRc/E;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LRc/E;->a:LRc/E;

    return-void
.end method


# virtual methods
.method public final getContext()Lib/h;
    .locals 0

    sget-object p0, Lib/i;->a:Lib/i;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
