.class public final Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;",
        "",
        "()V",
        "AUTHENTICATION_API",
        "",
        "CONNECT_TIMEOUT",
        "",
        "KEEP_ALIVE_DURATION",
        "MAX_THREAD_NUMBER",
        "NONCE_API",
        "READ_TIMEOUT",
        "WRITE_TIMEOUT",
        "baseUrl",
        "DvsAgent-INTERNAL-1.0.7_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;

.field private static final AUTHENTICATION_API:Ljava/lang/String; = "communicator/api/devices/auth/anonymous"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONNECT_TIMEOUT:I = 0xa

.field public static final KEEP_ALIVE_DURATION:I = 0x2710

.field public static final MAX_THREAD_NUMBER:I = 0x5

.field private static final NONCE_API:Ljava/lang/String; = "communicator/api/nonce"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final READ_TIMEOUT:I = 0x8

.field public static final WRITE_TIMEOUT:I = 0x4

.field public static final baseUrl:Ljava/lang/String; = "https://dvs-stg.samsungmobile.com"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;->$$INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
