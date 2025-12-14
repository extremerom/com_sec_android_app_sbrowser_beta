.class public abstract synthetic LR2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, LR2/h;->values()[LR2/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LR2/g;->a:[I

    :try_start_0
    sget-object v1, LR2/h;->AES256_GCM:LR2/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
