.class public final LMb/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:LMb/E;

.field public static final b:LP7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LMb/E;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LMb/E;->a:LMb/E;

    new-instance v0, LP7/c;

    const-string v1, "PackageViewDescriptorFactory"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, LP7/c;-><init>(ILjava/lang/Object;)V

    sput-object v0, LMb/E;->b:LP7/c;

    return-void
.end method
