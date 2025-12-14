.class synthetic Lorg/chromium/components/webauthn/Barrier$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Barrier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$chromium$components$webauthn$Barrier$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/chromium/components/webauthn/Barrier$Mode;->values()[Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/chromium/components/webauthn/Barrier$1;->$SwitchMap$org$chromium$components$webauthn$Barrier$Mode:[I

    :try_start_0
    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_FIDO_2_API:Lorg/chromium/components/webauthn/Barrier$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/chromium/components/webauthn/Barrier$1;->$SwitchMap$org$chromium$components$webauthn$Barrier$Mode:[I

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_CRED_MAN:Lorg/chromium/components/webauthn/Barrier$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/chromium/components/webauthn/Barrier$1;->$SwitchMap$org$chromium$components$webauthn$Barrier$Mode:[I

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Mode;->BOTH:Lorg/chromium/components/webauthn/Barrier$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
