.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Eh9_ou4HbbT4H4ZFilpDDtanY4k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Eh9_ou4HbbT4H4ZFilpDDtanY4k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Eh9_ou4HbbT4H4ZFilpDDtanY4k;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Eh9_ou4HbbT4H4ZFilpDDtanY4k;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Eh9_ou4HbbT4H4ZFilpDDtanY4k;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$Eh9_ou4HbbT4H4ZFilpDDtanY4k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterfaceFromPlugin(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/IntentButtonProvider;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$onAttachedToWindow$3(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p1

    return-object p1
.end method
