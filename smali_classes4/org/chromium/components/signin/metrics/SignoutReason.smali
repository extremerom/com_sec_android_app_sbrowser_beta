.class public interface abstract annotation Lorg/chromium/components/signin/metrics/SignoutReason;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final ABORT_SIGNIN:I = 0x4

.field public static final ACCOUNT_EMAIL_UPDATED:I = 0x14

.field public static final ACCOUNT_RECONCILOR_RECONCILE:I = 0x17

.field public static final ACCOUNT_REMOVED_FROM_DEVICE:I = 0x9

.field public static final AUTHENTICATION_FAILED_WITH_FORCE_SIGNIN:I = 0x7

.field public static final CANCEL_SYNC_CONFIRMATION_ON_WEB_ONLY_SIGNED_IN:I = 0x1e

.field public static final CANCEL_SYNC_CONFIRMATION_REMOVE_ACCOUNT:I = 0x20

.field public static final DEVICE_LOCK_REMOVED_ON_AUTOMOTIVE:I = 0x1c

.field public static final FORCE_SIGNOUT_ALWAYS_ALLOWED_FOR_TEST:I = 0xb

.field public static final GAIA_COOKIE_UPDATED:I = 0x16

.field public static final GOOGLE_SERVICE_NAME_PATTERN_CHANGED:I = 0x1

.field public static final IDLE_TIMEOUT_POLICY_TRIGGERED_SIGN_OUT:I = 0x1f

.field public static final IOS_ACCOUNT_REMOVED_FROM_DEVICE_AFTER_RESTORE:I = 0xf

.field public static final MAX_VALUE:I = 0x26

.field public static final MOVE_PRIMARY_ACCOUNT:I = 0x21

.field public static final PREF_CHANGED:I = 0x0

.field public static final REVOKE_SYNC_FROM_SETTINGS:I = 0x1d

.field public static final SERVER_FORCED_DISABLE:I = 0x5

.field public static final SIGNIN_MANAGER_UPDATE_UPA:I = 0x18

.field public static final SIGNIN_NOT_ALLOWED_ON_PROFILE_INIT:I = 0xa

.field public static final SIGNIN_RETRIGGERED_FROM_WEB_SIGNIN:I = 0x12

.field public static final SIGNOUT_BEFORE_SUPERVISED_SIGNIN:I = 0x26

.field public static final SIGNOUT_DURING_PROFILE_DELETION:I = 0x22

.field public static final SIGNOUT_FOR_ACCOUNT_SWITCHING:I = 0x23

.field public static final TEST:I = 0x0

.field public static final USER_CLICKED_REVOKE_SYNC_CONSENT_SETTINGS:I = 0x10

.field public static final USER_CLICKED_SIGNOUT_FROM_CLEAR_BROWSING_DATA_PAGE:I = 0x15

.field public static final USER_CLICKED_SIGNOUT_FROM_USER_POLICY_NOTIFICATION_DIALOG:I = 0x13

.field public static final USER_CLICKED_SIGNOUT_IN_ACCOUNT_MENU:I = 0x24

.field public static final USER_CLICKED_SIGNOUT_PROFILE_MENU:I = 0x11

.field public static final USER_CLICKED_SIGNOUT_SETTINGS:I = 0x3

.field public static final USER_DECLINED_HISTORY_SYNC_AFTER_DEDICATED_SIGN_IN:I = 0x1b

.field public static final USER_DELETED_ACCOUNT_COOKIES:I = 0x19

.field public static final USER_DISABLED_ALLOW_CHROME_SIGN_IN:I = 0x25

.field public static final USER_TAPPED_UNDO_RIGHT_AFTER_SIGN_IN:I = 0x1a
