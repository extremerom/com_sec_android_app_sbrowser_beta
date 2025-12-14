.class public final Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;",
        "",
        "()V",
        "VERSION_CODE",
        "",
        "getVERSION_CODE",
        "()J",
        "VERSION_NAME",
        "",
        "getVERSION_NAME",
        "()Ljava/lang/String;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVERSION_CODE()J
    .locals 2

    const-wide/16 v0, 0x2717

    return-wide v0
.end method

.method public final getVERSION_NAME()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "1.0.7"

    return-object p0
.end method
