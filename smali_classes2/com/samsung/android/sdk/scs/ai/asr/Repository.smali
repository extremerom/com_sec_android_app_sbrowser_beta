.class interface abstract Lcom/samsung/android/sdk/scs/ai/asr/Repository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;
    }
.end annotation


# static fields
.field public static final settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository;

    return-void
.end method


# virtual methods
.method public abstract getServerType(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract setServerType(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;)Z
.end method
