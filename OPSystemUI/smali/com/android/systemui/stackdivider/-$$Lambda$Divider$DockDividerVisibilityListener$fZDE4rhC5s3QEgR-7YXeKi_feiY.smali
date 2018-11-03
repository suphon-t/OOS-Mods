.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$fZDE4rhC5s3QEgR-7YXeKi_feiY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field private final synthetic f$1:Z

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$fZDE4rhC5s3QEgR-7YXeKi_feiY;->f$0:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$fZDE4rhC5s3QEgR-7YXeKi_feiY;->f$1:Z

    iput-wide p3, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$fZDE4rhC5s3QEgR-7YXeKi_feiY;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$fZDE4rhC5s3QEgR-7YXeKi_feiY;->f$0:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$fZDE4rhC5s3QEgR-7YXeKi_feiY;->f$1:Z

    iget-wide v2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$fZDE4rhC5s3QEgR-7YXeKi_feiY;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->lambda$onAdjustedForImeChanged$0(Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;ZJ)V

    return-void
.end method
