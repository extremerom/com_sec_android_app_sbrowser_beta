.class public final LSb/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:LSb/z;

.field public static final b:Lt9/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LSb/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LSb/z;->a:LSb/z;

    new-instance v0, Lt9/c;

    sget-object v1, Lfb/w;->a:Lfb/w;

    invoke-direct {v0, v1}, Lt9/c;-><init>(Ljava/util/Map;)V

    sput-object v0, LSb/z;->b:Lt9/c;

    return-void
.end method
